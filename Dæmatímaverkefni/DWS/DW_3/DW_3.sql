select id, name from people
where gender = 'F';

select * from people;
select * from competitions;
select * from results;
select * from sports;
select * from gender;

select DISTINCT P.id as id, P.name as name
from people P,results R
Where P.id = R.peopleid
order by id;

select people.id, people.name from people, competitions
where people.id = competitions.id;

select DISTINCT people.id, people.name from people, results
where people.id = public.results.peopleid
order by id;

              
select people.name as pname, sports.name as sname, ((results.result) / (sports.record) * 100) as percentage
from people
inner join results on people.ID = Results.peopleID
inner join sports on sports.id = results.sportid;

select * from competitions;

select distinct name
from people, competitions
join results r on competitions.id != r.competitionid


select P.id as id, P.name as name
from people P
EXCEPT
select P.id as id, P.name as name
from people P
inner join results on results.peopleid = P.id






