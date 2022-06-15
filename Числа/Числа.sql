REM   Script: Числа
REM   Числа

declare  
    a varchar(20); 
begin 
    a := to_char(123456.789, '999G999D99', 'NLS_NUMERIC_CHARACTERS='', '''); 
    dbms_output.put_line(a); 
end;
