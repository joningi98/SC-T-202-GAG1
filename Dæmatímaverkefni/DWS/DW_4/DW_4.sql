-- Dæmi 1 --
select p.name
from people p
inner join results r on p.id = r.peopleid
inner join sports s on r.sportid = s.id
where r.result >= s.record
group by p.name, r.result;


-- Dæmi 2 --
select p.name, r.result
from people p
inner join results r on p.id = r.peopleid
where r.result = (
  select min(r2.result)
  from results r2
  );


-- Dæmi 3 --
select p.name, s.name
from people p, sports s
where p.gender = 'F'

intersect

select p2.name, s.name
from people p2
join results r2 on p2.id = r2.peopleid
join sports s on r2.sportid = s.id
where s.name = 'Long Jump';


select DISTINCT p.name, s.name
from people p
join results r on p.id = r.peopleid
join sports s on r.sportid = s.id
where p.gender = 'F' and s.name in (
  select s.name
  from sports
where s.name =  'Long Jump');

-- Dæmi 4 --
select p.name
from people p
full outer join results r on p.id = r.peopleid
where r.result is NULL or p.id is NULL;


