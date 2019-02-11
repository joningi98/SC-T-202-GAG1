select A.rdate, A.rbalance
from accounts A
where A.aid = X;


select R.rdate, R.rbalance
from accountrecords R
where R.aid = X and R.aid =(
  SELECT max(r1.rid)
  from accountrecords R1
  where R1.aid = R.aid
  );

select * from people;
select * from accountrecords;
select * from accounts;


-- Dæmi 1 --
create view People_Accounts
as
  select ar.rbalance, p.pname
  from accountrecords ar
  inner join accounts a on ar.aid = a.aid
  inner join people p on a.pid = p.pid
  where p.pid = a.pid and
        ar.aid = a.aid
  order by a.aid, ar.rid;

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


SELECT make_new_account('2018-02-11',333,444, 'Jón', 'M', 1.75);

SELECT *
FROM accounts a
WHERE a.adate = '2018-02-11';


-- Dæmi 3 --
CREATE TRIGGER Check_person
  BEFORE INSERT ON people
  WHEN (pgender != 'M' or pgender != 'F' or pheight <= 0)


insert into people(pid, pname, pgender, pheight) VALUES (222, 'lol','ð',-15);

select * from people p where p.pgender = 'ð'