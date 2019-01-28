select id, name from people
where gender = 'F';

select * from people;
select * from competitions;
select * from results;
select * from sports;

select DISTINCT P.id as id, P.name as name
from people P,results R
Where P.id = R.peopleid
order by id;

select people.id, people.name from people, competitions
where people.id = competitions.id;

select DISTINCT people.id, people.name from people, results
where people.id = public.results.peopleid
order by id;

select DISTINCT people.name as pname, sports.name as sname
from people, results, sports
where people.id = results.peopleid and sports.id = results.sportid;

select DISTINCT people.id, people.name from people, competitions
where people.id != competitions.id
ORDER BY people.id;

select distinct * from people
order by people.id;

select DISTINCT P.name as pname, S.name as sname, R.result as percentage
from people P, sports S, results R;

select DISTINCT P.name as pname, S.name as sname
from people P, results R, sports S
where P.id = R.peopleid and S.id = R.sportid;

