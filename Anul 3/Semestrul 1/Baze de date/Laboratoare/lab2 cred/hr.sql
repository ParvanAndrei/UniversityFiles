SELECT * FROM Employees Where Salary > 5000;

SELECT * FROM Employees Where Salary BETWEEN 7000 and 10000;

SELECT * From Employees where First_name = 'John';

Select * from Employees where Hire_date > '01-DEC-07';

Select * from employees where
JOB_ID = 'IT_PROG' and
Salary >5000;

select * from employees where
Job_id = 'ST_CLERK' OR JOB_ID = 'MK_MAN';

select * from employees where First_name LIKE '__a%';
select * from employees where Job_id LIKE '%CLERK%';

select * from employees order by last_name; 
select * from employees order by first_name;

CREATE TABLE Programatori AS
SELECT First_name Prenume, 
Last_Name Nume FROM Employees
WHERE Job_id = 'IT_PROG';

DESCRIBE Programatori;


SELECT First_name, Last_name, 
Salary as "Salariu_brut",
0.2*Salary+Salary as"Propunere marire salariu" 
FROM Employees WHERE Job_id like '%MAN%';

select First_name, Last_name, Salary, ROUND(Salary/30,3) as "Salariu pe o zi" From employees;

select first_name, last_name, job_id from employees order by job_id;
select count (*), job_id from employees group by job_id;

select first_name, Last_name, departament_id from employees where (