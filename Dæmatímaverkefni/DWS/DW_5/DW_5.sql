-- Dæmi 1 --
create or replace view People_Accounts
as
  select p.*, a2.*
from people p
inner join accounts a on p.pid = a.pid
inner join accountrecords a2 on a.aid = a2.aid;

SELECT *
FROM People_Accounts
WHERE pid = 200
ORDER BY aid, rid;


-- Dæmi 2 --
create or replace FUNCTION Make_New_Account(in n_adate date,in n_abalance INT,
                                            in n_aover INT, n_paname varchar(45),
                                            n_pgender varchar(1), n_pheigt FLOAT)
RETURNS VOID
AS $$
DECLARE
    newPID INTEGER;
BEGIN
     INSERT INTO people(pname, pgender, pheight)
     VALUES (n_paname, n_pgender, n_pheigt);
     newPID := lastval();
     insert into accounts(pid,adate, abalance, aover)
     VALUES (newPID, n_adate, n_abalance, n_aover);
     RETURN;
END;
$$
LANGUAGE plpgsql;


-- Dæmi 3 --
CREATE OR REPLACE FUNCTION Check_people_insert()
RETURNS TRIGGER
  AS $$
  BEGIN
    IF (NEW.pgender != 'M' or NEW.pgender != 'F') THEN
      RAISE EXCEPTION 'Wrong input'
        USING ERRCODE = '45000';
    END IF;
    IF (NEW.pheight < 0) THEN
      RAISE EXCEPTION 'Height cannot be negative'
      USING ERRCODE = '45000';
    END IF;
      RETURN NEW;
END $$
LANGUAGE plpgsql;


CREATE TRIGGER peron_insert_check AFTER INSERT
  ON people
FOR EACH ROW
  EXECUTE PROCEDURE Check_people_insert();


-- Dæmi 4 --
CREATE OR REPLACE PROCEDURE Check_accounts()
LANGUAGE plpgsql
AS $$
BEGIN
  PERFORM *
  FROM accounts A
  WHERE (A.abalance != 0 OR
         EXISTS( SELECT * FROM accountrecords R1
           WHERE A.aid = R1.aid))
  AND NOT EXISTS( SELECT * FROM accountrecords R
    WHERE A.aid = R.aid
    AND A.adate = R.rdate
    AND A.abalance = R.rbalance
    AND R.aid = (SELECT MAX(r2.rid) FROM accountrecords r2
    WHERE r2.aid = a.aid));
  RETURN;
END $$;
