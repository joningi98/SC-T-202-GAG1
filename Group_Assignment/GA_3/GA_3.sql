--- Dæmi 1 ---

CREATE OR REPLACE VIEW AllAccountRecords
AS
  SELECT a.aid, a.pid, a.adate, a.abalance, a.aover, a2.rid, a2.rdate, a2.rtype, a2.ramount, a2.rbalance
  FROM accounts a
  LEFT OUTER JOIN accountrecords a2 on a.aid = a2.aid;

--- Dæmi 2 ---

CREATE OR REPLACE VIEW DebtorStatus
AS
  SELECT p.pid, p.pname, SUM(a.abalance) as total, SUM(a.aover) as over
  FROM people p
  INNER JOIN accounts a ON p.pid = a.pid
  GROUP BY p.pid, p.pname
  HAVING SUM(a.abalance) < 0;


--- Dæmi 3 ---


CREATE OR REPLACE VIEW FinancialStatus
AS
  SELECT p.pid, p.pname, SUM(a.abalance) as total_balance, SUM(b.bamount) as unpaid
  FROM people p
  INNER JOIN accounts a on p.pid = a.pid
  INNER JOIN bills b on p.pid = b.pid
  WHERE b.bispaid = 'f'
  GROUP BY p.pid
  HAVING COUNT(a.pid) > 1;


--- Dæmi 4 ---


CREATE OR REPLACE FUNCTION CheckBills()
RETURNS TRIGGER
AS $$
  BEGIN
    IF( NEW.bduedate < CURRENT_DATE) THEN
      RAISE EXCEPTION 'Due date cant be later than today´s date' USING ERRCODE = '45000';
    end if;
    IF (NEW.bamount < 0) THEN
      RAISE EXCEPTION 'Bills cannot have a negative amount' USING ERRCODE = '45000';
    end if;
    IF (TG_OP = 'DELETE') THEN
      RAISE EXCEPTION 'Cannot delete' USING ERRCODE = '45000';
    end if;
    IF (TG_OP = 'UPDATE') THEN
        IF (bispaid = 'T') THEN
          RAISE EXCEPTION 'Cannot change ' USING ERRCODE = '45000';
        end if;
    END IF;
    RETURN NEW;
  end;
$$
LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS CheckBills on bills;

CREATE TRIGGER CheckBills
  BEFORE INSERT OR DELETE OR UPDATE OF bduedate, bamount ON bills
  FOR EACH ROW
  EXECUTE PROCEDURE CheckBills();


--- Dæmi 5 ---


CREATE OR REPLACE FUNCTION CheckAccountRecords()
RETURNS TRIGGER
AS
$$
  BEGIN
    IF (TG_OP = 'INSERT') THEN
      IF (NEW.ramount > (SELECT a.aover + a.abalance
                         FROM accounts a
                         WHERE a.aid = NEW.aid)) THEN
        RAISE EXCEPTION 'Cannot withdraw' USING ERRCODE = '45000';
      ELSE
          UPDATE  accounts a
          SET abalance = abalance + NEW.ramount
          WHERE NEW.aid = a.aid;

          NEW.rbalance = (SELECT  a3.abalance
                          FROM accounts a3
                          WHERE NEW.aid = a3.aid);
          RETURN NEW;
      END IF;
      ELSIF (TG_OP = 'DELETE') THEN
        RAISE EXCEPTION 'Cannot delete record' USING ERRCODE = '45000';
      ELSIF (TG_OP = 'UPDATE') THEN
        RAISE EXCEPTION 'Cannot update record' USING ERRCODE = '45000';
    END IF;
  end;
$$
LANGUAGE plpgsql;


DROP TRIGGER IF EXISTS CheckAccountRecords ON AccountRecords;
CREATE TRIGGER CheckAccountRecords
  BEFORE INSERT OR DELETE OR UPDATE ON accountrecords
  FOR EACH ROW
  EXECUTE PROCEDURE CheckAccountRecords();


--- Dæmi 6 ---

CREATE OR REPLACE FUNCTION StartNewAccount()
RETURNS TRIGGER
AS
$$
  DECLARE NEW_PID INT;
  BEGIN
    NEW_PID := lastval();
    INSERT INTO accounts (pid, adate, abalance, aover) VALUES (NEW_PID, current_date, 1000, 0);
    RETURN NEW;
  end;
$$
LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS NewPerson on people;

CREATE TRIGGER NewPerson
  AFTER INSERT ON people
  EXECUTE PROCEDURE StartNewAccount();


--- Dæmi 7 ---

CREATE OR REPLACE FUNCTION InsertPerson(iName varchar(30), iGender varchar(1), iHeight FLOAT)
RETURNS VOID
AS
$$
  BEGIN
    INSERT INTO people (pname, pgender, pheight) VALUES (iName, iGender, iHeight);
  end;
$$
LANGUAGE plpgsql;


--- Dæmi 8 ---


CREATE OR REPLACE FUNCTION PayBill(iBID INT)
RETURNS VOID
AS $$
  DECLARE ACCOUNT_TO_USE_TO_PAY INT;
  DECLARE BILL_AMOUNT INT;
  BEGIN
    ACCOUNT_TO_USE_TO_PAY := (SELECT a.pid
                              FROM accounts a
                              WHERE a.pid = (select pid
                                             from bills
                                             where bid = iBID)
                              GROUP BY a.pid
                              HAVING MAX(a.abalance) = (SELECT (MAX(abalance))
                                                         FROM accounts));

    BILL_AMOUNT := (SELECT bamount
                    FROM bills
                    WHERE bid = iBID);

    INSERT INTO accountrecords (aid, rdate, rtype, ramount, rbalance) VALUES ((SELECT aid
                                                                               FROM accounts a
                                                                               WHERE a.pid = ACCOUNT_TO_USE_TO_PAY), current_date, 'T', BILL_AMOUNT, (SELECT abalance
                                                                                                                        FROM accounts
                                                                                                                        WHERE pid = ACCOUNT_TO_USE_TO_PAY) - BILL_AMOUNT);
    UPDATE accounts SET abalance = abalance - BILL_AMOUNT WHERE pid = ACCOUNT_TO_USE_TO_PAY;
    UPDATE bills SET bispaid = 'T' WHERE bid = iBID;

    RAISE NOTICE 'Value: %', ACCOUNT_TO_USE_TO_PAY;
    RAISE NOTICE 'Value: %', BILL_AMOUNT;

  end;
$$
LANGUAGE plpgsql;


--- Dæmi 9 ---


CREATE OR REPLACE FUNCTION Transfer (iToAID INT, iFromAID INT, iAmount INT)
RETURNS VOID
AS
$$
  BEGIN
    INSERT INTO accountrecords (aid, rdate, rtype, ramount, rbalance) VALUES (iFromAID, current_date, 'T', iAmount, ((SELECT abalance
                                                                                                                     FROM accounts a
                                                                                                                     INNER JOIN people p on a.pid = p.pid
                                                                                                                     WHERE a.aid = iFromAID) - iAmount));
    INSERT INTO accountrecords (aid, rdate, rtype, ramount, rbalance) VALUES (iToAID, current_date, 'T', iAmount, ((SELECT abalance
                                                                                                                     FROM accounts a
                                                                                                                     INNER JOIN people p on a.pid = p.pid
                                                                                                                     WHERE a.aid = iToAID) + iAmount));
    UPDATE accounts SET abalance = abalance - iAmount WHERE aid = iFromAID;
    UPDATE accounts SET abalance = abalance + iAmount WHERE aid = iToAID;
  end;
$$
LANGUAGE plpgsql;


--- Dæmi 10 ---


CREATE OR REPLACE FUNCTION LoanMoney (iAID INT, iAmount INT, iDueDate DATE)
RETURNS VOID
AS
$$
  DECLARE LONEE_ID INT;
  BEGIN
    LONEE_ID := (SELECT p.pid
                 FROM people p
                 INNER JOIN accounts a ON a.pid = p.pid
                 WHERE a.aid = iAID);

    INSERT INTO bills (pid, bduedate, bamount, bispaid) VALUES (LONEE_ID, iDueDate, iAmount, 'F');
    UPDATE accounts SET abalance = abalance + iAmount WHERE aid = iAID;
  end;
$$
LANGUAGE plpgsql;
