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