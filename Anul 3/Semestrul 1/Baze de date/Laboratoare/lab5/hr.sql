select First_name, Last_name, Department_name from Employees, Departments
where employees.department_ID = Departments.Department_ID;

select First_name, Last_name, Department_name from Employees, Departments
where employees.department_ID = Departments.Department_ID and department_name = 'Sales';



select first_name, last_name, job_title from Employees, Jobs
where employees.job_id = jobs.job_id;


select department_name as "numele departamentului", count(*) as "numar de angajati" from employees, Departments
where employees.department_id = departments.department_id
group by department_name;

select department_name, city from departments, locations
where departments.location_id = locations.location_id and city = 'Seattle';

select department_name, street_address from departments, locations
where departments.location_id = locations.location_id and street_address like '%Arthur St%';

select first_name, last_name, locations.country_id from employees, departments, locations
where employees.department_id = departments.department_id and departments.location_id = locations.location_id
and (locations.country_id = 'US' or locations.country_id = 'CA');

commit;

set serveroutput on
begin
dbms_output.put_line('hello world!');
end;
/

SET SERVEROUTPUT ON
DECLARE
 salariu_lunar NUMBER(4);
 zile_lucrate NUMBER(2);
 plata_zilnica NUMBER(6,2);
BEGIN
 salariu_lunar := 2000;
 zile_lucrate := 21;
 plata_zilnica := salariu_lunar / zile_lucrate;
 DBMS_OUTPUT.PUT_LINE('Salariul pe zi este ' || TO_CHAR(plata_zilnica) || ' lei.');

EXCEPTION
 WHEN ZERO_DIVIDE THEN
 plata_zilnica := 0;

END;
/ 

declare
a number(4);
b number(4);
c number(4);
media number(6,2);
begin
a :=2;
b :=9;
c :=8;
media := (a+b+c)/3;
DBMS_OUTPUT.PUT_line('media este: ' || to_char(media));

end;
/

SET SERVEROUTPUT ON

DECLARE
 Prenume VARCHAR2(20);
 Nume VARCHAR2(10); 
BEGIN
 SELECT first_name, last_name INTO Prenume, Nume
 FROM Employees
 WHERE Employee_ID = 200;

 DBMS_OUTPUT.PUT_LINE('Nume si prenume: ' || Nume || ' ' || Prenume);

 EXCEPTION
 WHEN NO_DATA_FOUND THEN
 DBMS_OUTPUT.PUT_LINE('Nu exista date');
 WHEN TOO_MANY_ROWS THEN
 DBMS_OUTPUT.PUT_LINE('Mai multe linii');
 WHEN OTHERS THEN
 DBMS_OUTPUT.PUT_LINE('Alta exceptie');
END;
/ 

SET SERVEROUTPUT ON;

DECLARE
 a NUMBER := 5; b NUMBER := 10; x NUMBER; -- Schimbati aici valorile pentru a si b

BEGIN
 IF (a<>0) THEN
 x := -b/a;
 DBMS_OUTPUT.PUT_LINE(' x = ' || TO_CHAR(x));
 ELSE
 IF (b<>0) THEN
 DBMS_OUTPUT.PUT_LINE('Fara solutie');
 ELSE
 DBMS_OUTPUT.PUT_LINE('Nedeterminare');
 END IF;
 END IF;

END;
/

SET SERVEROUTPUT ON;
DECLARE
 Nota NUMBER(2);
BEGIN
 Nota := 5;
 CASE Nota
 WHEN 10 THEN DBMS_OUTPUT.PUT_LINE('Excelent');
 WHEN 9 THEN DBMS_OUTPUT.PUT_LINE('Foarte bine');
 WHEN 8 THEN DBMS_OUTPUT.PUT_LINE('Bine');
 WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('Satisfacator');
 WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('Slab');
 WHEN 5 THEN DBMS_OUTPUT.PUT_LINE('De trecere');
 ELSE DBMS_OUTPUT.PUT_LINE('Nota prea mica (<5) sau Inexistenta (>10)');
 END CASE;
END;
/

set serveroutput on;
declare
 salariu_mediu employees.salary%type;
 salariu employees.salary%type;
 nume varchar2(20);
 prenume varchar2(20);
begin
 select avg (salary) into salariu_mediu
 from employees
 where job_id = 'IT_PROG';
 
 select first_name, last_name, salary into prenume, nume, salariu
 from employees
 where employee_id = 200;
 
 if (salariu< salariu_mediu) then
 DBMS_output.put_line('salariul angajatului cu numele  ' || nume || ' ' || prenume || ' este mai mic decat salariul mediu');
 else 
  DBMS_output.put_line('salariul angajatului cu numele  ' || nume || ' ' || prenume || ' este mai mare decat salariul mediu');
end if;

exception
when NO_DATA_FOUND then
dbms_output.put_line('angajatul nu exista');
end;
/

set serveroutput on;

declare
luna number(2);

begin 
select to_char(hire_date, 'MM') into luna
from employees
where employee_id = 200;
dbms_output.put_line(luna);

case
when luna= 1 or luna = 2 or luna = 12 then dbms_output.put_line('Iarna');
when luna= 3 or luna = 4 or luna = 4 then dbms_output.put_line('Primavara');
when luna= 6 or luna = 7 or luna = 8 then dbms_output.put_line('Vara');
when luna= 9 or luna = 10 or luna = 11 then dbms_output.put_line('Toamna');
end case;

EXCEPTION
when NO_DATA_FOUND then
dbms_output.put_line('nu exista date');
end;
/


create table Bonus(
v_id number(4),
v_salariu number(6));

set serveroutput on;

declare
id_ang number(4);
salariu number(10);
i number(3);

begin
for i in 101..110 loop
select employees_id, salary into id_ang, salariu
from Employees
where Employee_ID = i;
insert into BONUS (v_id, v_salariu)
values (id_ang, (salariu + 0.1* salariu));
end loop;

exception
when NO_DATA_FOUND then
dbms_output.put_line('nu exista date');
end;
/

select * from bonus;

commit;
