REM   Script: Дата и время
REM   Дата и время

select day_, last_day(day_) as "Последний день месяца", 
    to_date(trunc(day_, 'MON'), 'DD-MON-YY') as "Первый день месяца", 
    (last_day(day_)+1) as "Первый день следующего месяца", 
    (day_-1) as "На день меньше указанной даты" 
from 
    (select sd+LEVEL-1 day_ 
    from (SELECT TRUNC(SYSDATE) sd from dual) cc 
    connect by SYSDATE + level-1< SYSDATE + 366);

