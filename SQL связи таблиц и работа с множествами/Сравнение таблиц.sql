REM   Script: Сравнение таблиц на идентичность
REM   Сравнение таблиц на идентичность

create table t1(a number, b number);

	create table t2(a number, b number);

	INSERT INTO t1 VALUE (  
	select 1,  1 from dual union all 
	select 2,  2 from dual union all 
	select 2,  2 from dual union all 
	select 3,  3 from dual union all 
	select 4,  4 from dual ) 
 
	INSERT INTO t2 VALUE (  
	select 1, 1 from dual union all 
	select 2, 2 from dual union all 
	select 3, 3 from dual union all 
	select 3, 3 from dual union all 
	select 4, 4 from dual );

select t1.B  
    from t1  
  minus  
select t2.B  
    from t2  
  union all  
(select t2.B  
    from t2  
  minus  
  select t1.B  
    from t1);

