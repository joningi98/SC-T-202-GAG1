--- Fyrir dæmi 2 ---

begin transaction;
  select '2. View DebtorStatus' as now_checking;
  select 'Should return 28 debtors' as result;
  select count(*)
  from DebtorStatus;
rollback;


-- Fyrir dæmi 3 ---

begin transaction;
  select '3. View Financialstatus' as now_checking;
  select 'Should return 24 people with one or more accaount' as result;
  select count(*)
  from DebtorStatus;
rollback;


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


--- Fyrir dæmi 5 ---

begin transaction;
  select * from accounts a
  where a.abalance > 8000;

  DELETE from accounts
  where abalance > 1000;

  select * from accounts a
  where a.abalance = 1000;

rollback;

-- Fyrir dæmi 7 ---
begin transaction;

  select * from s.people
  where pname = 'Helgi'
  union
  select * from s.people
  where pname = 'Elsa';

  SELECT InsertPerson('Helgi', 'M', 1.90, 1000);
  SELECT insertperson('Elsa', 'F', 1.58, 25000);

  select * from s.people
  where pname = 'Helgi'
  union
  select * from s.people
  where pname = 'Elsa';

rollback;



--- Fyrir dæmi 2 ---

begin transaction;
  select '2. View DebtorStatus' as now_checking;
  select 'Should return 28 debtors' as result;
  select count(*)
  from DebtorStatus;
rollback;

-- Fyrir dæmi 3 ---

begin transaction;
  select '3. View Financialstatus' as now_checking;
  select 'Should return 24 people with one or more accaount' as result;
  select count(*)
  from FinancialStatus;
rollback;


--- Fyrir dæmi 4 ---

begin transaction;
  INSERT INTO Bills (PID, bDueDate, bAmount, bIsPaid) values (105, '2014-10-23', 3141, false );
  savepoint point1;

  INSERT INTO Bills (PID, bDueDate, bAmount, bIsPaid) values (106, '2020-10-23', -3141, false );
  savepoint point2;

  DELETE from Bills b
  WHERE b.bduedate > '2013-01-01';

  savepoint point3;

  select '3. View Checkbills' as now_checking;
  select 'Should return 300 people' as result;
  select * FROM bills;

rollback;


--- Fyrir dæmi 5 ---

begin transaction;
  select * from accounts a
  where a.abalance > 8000;

  DELETE from accounts
  where abalance > 8000;

  select '5. View CheckAccountRecords' as now_checking;
  select 'Should return 10 people' as result;
  select * from accounts a
  where a.abalance > 8000;

rollback;

-- Fyrir dæmi 7 ---
begin transaction;

  select * from s.people
  where pname = 'Helgi'
  union
  select * from s.people
  where pname = 'Elsa';

  SELECT InsertPerson('Helgi', 'M', 1.90, 1000);
  SELECT insertperson('Elsa', 'F', 1.58, 25000);

  select '7. View InsertPerson' as now_checking;
  select 'Should return 2 people' as result;
  select * from s.people
  where pname = 'Helgi'
  union
  select * from s.people
  where pname = 'Elsa';

rollback;
