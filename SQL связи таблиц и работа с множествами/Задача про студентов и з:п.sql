REM   Script: Students_Friends_Packages
REM   У кого лучший друг получает большую з/п
-- Создаём таблицу

create table friends (ID integer NOT NULL, FRIEND_ID integer NOT NULL);

create table packages (ID integer NOT NULL, SALARY float NOT NULL);

create table students (ID integer NOT NULL, NAME varchar (20));

-- Заполняем таблицу

insert into students  
(ID, NAME) 
values (1, 'Ashley'), (2, 'Samantha'), (3, 'Julia'), (4, 'Scarlet');

insert into students  
(ID, NAME) 
values (1, 'Ashley');

insert into students  
(ID, NAME) 
values (2, 'Samantha');

insert into students  
(ID, NAME) 
values (3, 'Julia');

insert into students  
(ID, NAME) 
values (4, 'Scarlet');

insert into friends 
(ID, FRIEND_ID) 
values (1, 2);

insert into friends 
(ID, FRIEND_ID) 
values (2, 3);

insert into friends  
(ID, FRIEND_ID) 
values (3, 4);

insert into friends  
(ID, FRIEND_ID) 
values (4, 1);

insert into packages 
(ID, SALARY) 
values (1, 15.20);

insert into packages 
(ID, SALARY) 
values (2, 10.06);

insert into packages 
(ID, SALARY) 
values (3, 11.55);

insert into packages  
(ID, SALARY) 
values (4, 12.12);

--Таблица с именами, з/п, айди друга, з/п друга
select s.name, p.salary, f.friend_id, p1.salary as FRIEND_SALARY from students s 
join packages p on p.id = s.id 
join friends f on f.id = s.id 
join packages p1 on f.friend_id = p1.id 
where p.salary < p1.salary;

-- Результирующая таблица с именами

select s.name from students s 
join packages p on p.id = s.id 
join friends f on f.id = s.id 
join packages p1 on f.friend_id = p1.id 
where p.salary < p1.salary;

-- Ещё один вариант без джойнов

select s.name  
from students s, friends f, packages p, packages p1
where s.id = f.id and f.friend_id = p1.id and s.id = p.id
and p.salary < p1.salary order by p1.salary;

