REM   Script: Строки
REM   Строки

with Names as 
    (select 'П. Н. Наумов' val  
    from dual 
    union all 
    select 'Ал. С. Колесников' val 
    from dual 
    union all 
    select 'З. Пт. Шталь' val 
    from dual) 
 
select  
    regexp_substr(val, '[А-Я][а-я]*.[[:space:]][А-Я][а-я]*.[[:space:]]', 1) as "ИО", 
    LTRIM(val, regexp_substr(val, '[А-Я][а-я]*.[[:space:]][А-Я][а-я]*.[[:space:]]', 1)) as "Фамилия" 
from Names 



