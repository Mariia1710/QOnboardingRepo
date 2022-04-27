REM   Script: Задача 2
REM   Задача про широты

create table STATION (ID number NOT NULL, CITY varchar2 (21), 
STATE varchar2 (3), LAT_N number NOT NULL, LONG_W number NOT NULL);

insert into STATION   
(ID, CITY, STATE, LAT_N, LONG_W)  
values (1, 'Абакан', 'RU', 53.721152, 91.442387);

insert into STATION   
(ID, CITY, STATE, LAT_N, LONG_W)  
values (2, 'Абинск', 'RU', 44.866256, 38.151163);

insert into STATION   
(ID, CITY, STATE, LAT_N, LONG_W)  
values (3, 'Оханск', 'RU', 57.72193, 55.388656);

insert into STATION   
(ID, CITY, STATE, LAT_N, LONG_W)  
values (4, 'Сим', 'RU', 54.990716, 57.689969);

--Решение задачи 2

select ROUND(long_w, 4) from station 
where lat_n = ( select MIN(lat_n) from station 
                where lat_n > 38.7780);
                
--Решение задачи 3

select round(abs(min(lat_n)-max(lat_n)) + abs(min(long_w)-max(long_w)), 4)
from station


