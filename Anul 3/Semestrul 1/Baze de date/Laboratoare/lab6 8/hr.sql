SET SERVEROUTPUT ON
DECLARE
 linie Employees%rowtype;


 CURSOR Nume_functionari IS
 SELECT * FROM Employees
 WHERE Job_ID = 'ST_CLERK';
BEGIN
 OPEN Nume_functionari;
 LOOP
    FETCH Nume_functionari INTO linie;
    EXIT WHEN Nume_functionari%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(linie.First_name || ' ' || linie.Last_name );
 END LOOP;
 CLOSE Nume_functionari;

END;
/ 




DROP TABLE Angajati;
DROP TABLE Sectii;
CREATE TABLE Sectii (
 IDSectie NUMBER PRIMARY KEY,
 Nume VARCHAR2(50) NOT NULL,
 Buget NUMBER
);

INSERT INTO Sectii VALUES (1,'Productie',400000);
INSERT INTO Sectii VALUES (2,'Proiectare',300000);
INSERT INTO Sectii VALUES (3,'Cercetare',200000);
CREATE TABLE Angajati (
 IDAngajat NUMBER PRIMARY KEY,
 Nume VARCHAR2(20) NOT NULL,
 Prenume VARCHAR2(20) NOT NULL,
 Datanasterii DATE,
 Adresa VARCHAR2(50),
 Salariu NUMBER DEFAULT 2800,
 IDSectie NUMBER,
 FOREIGN KEY (IDSectie) REFERENCES Sectii (IDSectie)
 );
INSERT INTO Angajati VALUES (1,'Ionescu','Ion',DATE'1960-01-20','Bucuresti',4000,1);
INSERT INTO Angajati VALUES (2,'Popescu','Petre',DATE'1972-06-21','Bucuresti',3500,1);
INSERT INTO Angajati VALUES (3,'Vasilescu','Ana',DATE'1966-04-02','Bucuresti',3000,2);
INSERT INTO Angajati VALUES (4,'Ionescu','Ion',DATE'1970-11-12','Bucuresti',2500,3);
INSERT INTO Angajati VALUES (5,'Petrescu','Vasile',DATE'1985-01-25','Iasi',2800,2); 

CREATE SEQUENCE angajati_pk START WITH 6;

CREATE OR REPLACE TRIGGER angajati_insert
 BEFORE INSERT ON Angajati FOR EACH ROW
 BEGIN
 :NEW.IDAngajat := angajati_pk.NEXTVAL;
 END;
 /
 
 INSERT INTO Angajati (Nume, Prenume) VALUES ('FLOREA', 'Ioana');
 INSERT INTO Angajati (Nume, Prenume) VALUES ('CORNEA', 'Alexandru');
 INSERT INTO Angajati (Nume, Prenume) VALUES ('POPESCU', 'Ion');
 INSERT INTO Angajati (Nume, Prenume) VALUES ('Maricel', 'Marcel');
 
 CREATE TABLE ang_audit (
 ang_audit_id NUMBER(6),
 up_date DATE,
 sal_nou NUMBER(5),
 sal_vechi NUMBER(5) );
 
 CREATE OR REPLACE TRIGGER audit_sal
AFTER UPDATE OF Salariu ON Angajati FOR EACH ROW
BEGIN
 INSERT INTO ang_audit VALUES( :old.IDAngajat, SYSDATE, :new.Salariu, :old.Salariu );
END;
/

UPDATE Angajati SET Salariu=2600 WHERE IDAngajat=4;
Update Angajati Set Salariu = Salariu + (Salariu* 0.1) where IDAngajat > 1;

select * from angajati;
select * from ang_audit;

alter table angajati
add Salariu_net number(6);
declare 
 linie angajati%rowtype;
 
 CURSOR Angajat IS
 Select * FROM angajati;
 begin 
 open angajat;
loop
 Fetch angajat into linie;
 UPDATE Angajati SET sal_net = linie.salariu*0.7 where idangajat = linie.idangajat;
 exit when angajat%notfound;


end loop;
close angajat;
end;
/

Create or replace procedure Angajat(
    id_angajat IN Angajati.IDAngajat%type,
    numar_angajti OUT Angajati.IDSectie%Type,
    salariu_mediu OUT Angajati.Salariu%type)
    IS
    v_sectie number;
    begin
        select idsectie into v_sectie from angajati where idangajati = id_angajat;
        select count (idsectie),avg(salariu) into numar_angajati, salariu_mediu from Angajati
        where IDSectie = v_sectie;
        END;
        /
        
drop table Clienti;
create table Clienti(
cod_client NUMBER(4) PRIMARY KEY,
Nume VARCHAR2(20),
Prenume VARCHAR2(20),
Lucalitate VARCHAR2(10),
Telefon VARCHAR2(15));

create table Produse(
cod_produs  NUMBER(3) PRIMARY KEY,
denumire VARCHAR2(20),
stoc NUMBER(2),
pret NUMBER(5));

create table Comenzi(
nr_comanda NUMBER(2) PRIMARY KEY,
cod_client  NUMBER(4),
cod_produs  NUMBER(3),
cantitate NUMBER(2),
data DATE,
FOREIGN KEY (cod_client) REFERENCES Clienti(cod_client),
FOREIGN KEY (cod_produs) REFERENCES Produse(cod_produs));

insert into clienti values(3,'Petrescu','Veronica','Bucuresti','0234');
insert into clienti values(2,'Ionescu','Maria','Bucuresti','0014');
insert into clienti values(1,'Popescu','Ion','Iasi','1234');

insert into produse values(1,'Mere Golden',20,5);
insert into produse values(2,'Mere Ionatan',30,4);
insert into produse values(3,'Pere',20,7);

insert into comenzi values(1,1,2,3,'26-dec-2012');
insert into comenzi values(2,1,1,2,'26-dec-2012');
insert into comenzi values(3,3,3,3,'27-dec-2012');


select * from clienti order by cod_client;
select * from produse;
select * from comenzi;

select Denumire, pret_total from Produse; 