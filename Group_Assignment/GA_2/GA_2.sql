-- Dæmi 1 ---
select count(*)
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
select DISTINCT p.id, p.name
from people p
inner join results r on p.id = r.peopleid
inner join competitions c on r.competitionid = c.id
where date_part('year', c.held) = 2002
AND date_part('month', c.held) = 06
UNION
SELECT p.id, p.name
FROM people p
INNER JOIN results r on p.id = r.peopleid
INNER JOIN sports s on r.sportid = s.id
WHERE r.result = s.record AND
      s.name = 'High Jump';
-- Dæmi 4 --
select p.name, s.name, s.record
from people p
inner join results r on p.id = r.peopleid
inner join sports s on r.sportid = s.id
where s.record = r.result
group by p.name, s.name, s.record
having count(r.result = s.id) = 1;

-- Dæmi 5 --
SELECT DISTINCT s.id, s.name, to_char(max(r.result), 'FM99.99') as maxres
from sports s, people p
inner join results r on p.id = r.peopleid
inner join competitions c on r.competitionid = c.id
group by s.id, s.name, p.name, c.held
HAVING max(r.result) = s.record;

-- Dæmi 6 --
SELECT p.id, p.name, count(r.result = s.record)
FROM results r
INNER JOIN people p ON r.peopleid = p.id
INNER JOIN sports s ON r.result = s.record
GROUP BY p.id
HAVING COUNT(DISTINCT r.result)>=2;

-- Dæmi 7 --
SELECT p.id, p.name, p.height, r.result, s.name, s.record, CASE WHEN r.result = s.record THEN 'Yes'
                               ELSE 'No'
                               END AS Record
FROM results r
INNER JOIN sports s on r.sportid = s.id
INNER JOIN people p on r.peopleid = p.id
WHERE r.result IN (SELECT MAX(r2.result) FROM results r2 WHERE s.id = r2.sportid GROUP BY r2.sportid)
GROUP BY p.id, r.sportid, s.name, s.record, r.result
ORDER BY r.sportid;

-- Dæmi 8 --
SELECT p.name
FROM people p
INNER JOIN results r on p.id = r.peopleid
INNER JOIN competitions c on r.competitionid = c.id
GROUP BY p.name
HAVING COUNT(DISTINCT c.place) = 10;

-- Dæmi 9 --
select p.name, p.id
from people p
inner join results r on p.id = r.peopleid
inner join sports s on r.sportid = s.id
group by p.name,p.id
having count(r.result = s.record) = 7;


-- Dæmi 10 --
SELECT s.id, s.name, s.record, min(r.result)
FROM sports s
INNER JOIN results r on s.id = r.sportid
INNER JOIN competitions c on r.competitionid = c.id
GROUP BY s.id, c.place
HAVING COUNT(r.result) >= 1;
