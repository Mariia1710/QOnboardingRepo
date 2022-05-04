REM   Script: Задача про мальчиков_
REM   Задача про мальчиков_

select distinct sum(point) over (partition by name) sum1, name 
from ( 
select 'Серёжа' name , '2011' year, '23' point 
from dual 
union all 
select 'Паша' name , '2009' year, '13' point 
from dual 
union all 
select 'Серёжа' name , '2001' year, '10' point 
from dual)c 
where name = 'Серёжа';

