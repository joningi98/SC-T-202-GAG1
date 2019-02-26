--- Dæmi 1 ---

CREATE OR REPLACE VIEW AllAccountRecords
AS
  SELECT a.aid, a.pid, a.adate, a.abalance, a.aover
  FROM accounts a, accountrecords ar
  WHERE a.aid in (
    SELECT ar2.aid
    FROM
    accountrecords ar2
    )
  GROUP BY a.pid, a.aid;


SELECT * FROM AllAccountRecords;


--- Dæmi 2 ---

CREATE OR REPLACE VIEW DebtorStatus
AS
  SELECT DISTINCT p.pid, p.pname, a.abalance
  FROM people p
  INNER JOIN accounts a ON p.pid = a.pid
  WHERE a.abalance < 0
  GROUP BY p.pid, a.abalance;


SELECT * FROM DebtorStatus;


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


SELECT * FROM FinancialStatus;



--- Dæmi 4 ---

DROP TRIGGER IF EXISTS CheckBills on bills;

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
    IF (TG_OP ==
  end;
$$
end;


CREATE TRIGGER CheckBills BEFORE UPDATE ON bills
  FOR EACH ROW EXECUTE PROCEDURE CheckBills();












