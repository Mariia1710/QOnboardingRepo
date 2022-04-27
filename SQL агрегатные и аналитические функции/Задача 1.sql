REM   Script: Кол-во городов с населением больше 100000
REM   Кол-во городов с населением больше 100000

create table City (ID number NOT NULL, NAME varchar2 (17),
COUNTRYCODE varchar2 (3), DISTRICT varchar2 (20), POPULATION number NOT NULL);

-- Заполняем таблицу

insert into City
(ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
values (1, 'Москва', 'RU', 'Mos', 12655055);

insert into City
(ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
values (2, 'Якутск', 'RU', 'SA', 330615);

insert into City
(ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
values (3, 'Белорецк', 'RU', 'BA', 64497);

insert into City
(ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
values (4, 'Анапа', 'RU', 'KR', 94340);

insert into City
(ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
values (5, 'Томск', 'RU', 'TO', 568508);

insert into City
(ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
values (6, 'Казань', 'RU', 'TA', 1257341);

--Считаем кол-во городов

select COUNT(Name) from city c
where c.population > 100000
