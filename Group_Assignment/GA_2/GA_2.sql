-- Dæmi 1 ---
select *
from results r
where r.result is NULL;


-- Dæmi 2 --
select P.id as id, P.name as name
from people P
EXCEPT
select P.id as id, P.name as name
from people P
inner join results r on r.peopleid = P.id;


-- Dæmi 3 --
select DISTINCT p.name, s.name, c.held
from people p, sports s
inner join results r on s.id = r.sportid
inner join competitions c on r.competitionid = c.id
where date_part('year', c.held) = 2002
AND date_part('month', c.held) = 06;


-- Dæmi 4 --
select p.name, s.name, s.record
from people p
inner join results r on p.id = r.peopleid
inner join sports s on r.sportid = s.id
where s.record = r.result
group by p.name, s.name, s.record
having count(r.result = s.id) = 1;


-- Dæmi 5 --
