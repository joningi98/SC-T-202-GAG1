select 1 as Query;
select S.name
from sports S
order by name;

select 2 as Query;
select DISTINCT S.name
from sports s
join results R on R.sportid = S.id;

select 3 as Query;
select count(DISTINCT peopleid)
from results;

select 4 as Query;
select P.id as id, P.name as name
from people P,results R
Where P.id = R.peopleid
group by p.id
having count(result) = 20;


select 5 as Query;
select p.name, p.gender
from people p
inner join results r on p.id = r.peopleid
inner join sports s on r.sportid = s.id
where r.result = s.record
group by p.name, p.gender;

select 6 as Query;
select s.name, count(r.peopleid) as numathlites
from people p
join results r on r.peopleid = p.id
join sports s on r.sportid = s.id
where r.result = s.record
group by s.name;

select 7 as Query;
select peopleid, p.name, max(r.result) as best, round(cast(record-max(r.result) as numeric),2) as difference
from People p
join results r on r.peopleid = p.id
join sports s on s.id = r.sportid
where s.name = 'Triple Jump'
group by peopleid, p.name, record
having count(*) >=5;

select 8 as Query;
select distinct p.id, p.name, p.gender
from people p, results r
inner join competitions c on c.id = r.competitionid
inner join people p2 on r.peopleid = p2.id
where c.place = 'Selfoss' and extract(year from c.held) = '2009';

select 9 as Query;
select distinct p.name, p.gender
from people p
where lower(p.name) like '%% %geir%' ;

select 10 as Query;
select people.name as pname, sports.name as sname, round((results.result) / (sports.record) * 100) || '%' as percentage
from people
inner join results on people.ID = Results.peopleID
inner join sports on sports.id = results.sportid;