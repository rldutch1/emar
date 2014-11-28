select
	concat(p.firstname,' ',p.middlename,' ',p.lastname,' ') AS person
	,substr(((t.temp_f - 32) * (5 / 9)),1,5) AS celcius
	,t.temp_f AS Fahrenheit
	,t.temp_dttm AS date_time
from
	h_temp t
join
	h_person p on((t.person_id = p.id))


select
	concat(p.firstname,' ',p.middlename,' ',p.lastname,' ') AS person
	,substr(((t.temp_f - 32) * (5 / 9)),1,5) AS celcius
	,t.temp_f AS Fahrenheit
	,t.temp_dttm AS date_time
from
	h_temp t
join
	h_person p on((t.person_id = p.id))
and
	t.active_ind = 1
and
	p.id = 5
order by date_time desc


/* View that shows all data not just for a specific person.
drop view vw_temp;
create view vw_temp as
select
	concat(p.firstname,' ',p.middlename,' ',p.lastname,' ') AS person
	,substr(((t.temp_f - 32) * (5 / 9)),1,5) AS celcius
	,t.temp_f AS Fahrenheit
	,t.temp_dttm AS date_time
from
	h_temp t
join
	h_person p on((t.person_id = p.id))
and
	t.active_ind = 1
and
	p.id = 5
order by date_time desc
*/