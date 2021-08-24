SELECT First_name, Last_name,Employees.Salary, Departments.department_name FROM Employees, Departments WHERE Departments.department_name = 'Sales' OR Departments.department_name = 'Shipping' AND Employees.Salary > 5000 AND Employees.department_id = Departments.department_id;

SELECT First_name, Last_name, Salary, Departments.department_name FROM Employees, Departments WHERE ((Departments.department_name = 'Sales' OR Departments.department_name = 'Shipping') AND Employees.department_id = Departments.department_id) AND Salary > 5000;

SELECT AVG(Salary), Departments.department_name FROM Employees, Departments WHERE employees.department_id= departments.department_id ORDER BY AVG(Salary)DESC; 

SELECT Departments.department_name as "Numele departamentului", ROUND(AVG(Salary),2) Salariu_mediu FROM Employees, Departments WHERE Employees.department_id = Departments.department_id GROUP BY Departments.department_name ORDER BY Salariu_mediu DESC;

set serveroutput on;

declare
 salariu employees.salary%type;
 numar_angajati NUMBER(10);
 salariu_comparat employees.salary%type;
begin
 Select salary into salariu from employees where employees_id = 191;
 while employees_id = NOT NULL
    Select salary into salariu_comparat from employees; 
    if salariu_comparat < salariu
        numar_angajati := numar_angajati + 1;
    end if;
 end loop;
 
DBMS_OUTPUT.PUT_LINE('pt angajat cu id 191:
