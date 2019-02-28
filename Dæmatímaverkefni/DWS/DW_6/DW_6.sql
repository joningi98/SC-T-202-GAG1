--- Fyrir dæmi 2 ---
select '2. View DebtorStatus' as now_checking;
select 'Should return 28 debtors' as result;
select count(*)
from DebtorStatus;

--- Fyrir dæmi 4 ---

begin transaction;
  INSERT INTO Bills (PID, bDueDate, bAmount, bIsPaid) values (105, '2014-10-23', 3141, false );
  savepoint point1;

  INSERT INTO Bills (PID, bDueDate, bAmount, bIsPaid) values (106, '2020-10-23', -3141, false );
  savepoint point2;

  DELETE from Bills
  WHERE bduedate > '2013-01-01';

  savepoint point3;

  select * FROM bills;

rollback;

------------

BEGIN TRANSACTION;
    UPDATE people SET pname = 'Jón' WHERE pid = 1;
    SAVEPOINT point4;

SELECT * FROM people;

ROLLBACK;


------------


BEGIN TRANSACTION;
  INSERT INTO people (pname, pgender, pheight) VALUES ('Maggi Villuns', 'M', 1.20)
  RETURNING pid;
  INSERT INTO accounts (pid, adate, abalance, aover) VALUES (pid, CURRENT_DATE, 666666, 6666);
  SAVEPOINT point5;

ROLLBACK;

SELECT * FROM people, accounts WHERE pname = 'Maggi Villuns'



