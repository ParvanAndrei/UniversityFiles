CREATE TABLE agenda(
id number (3),
nume varchar2(20),
prenume varchar2(20),
nr_tel char(14));

INSERT INTO agenda VALUES (1, 'Popescu', 'Ion', '0217011010');
INSERT INTO agenda VALUES (2, 'Varda', 'Alexandru', '0123456789');
INSERT INTO agenda VALUES (3, 'Parvan', 'Andrei', '021456789');
INSERT INTO agenda VALUES (4, 'Pop', 'Vladut', '0217011010');
INSERT INTO agenda VALUES (5, 'Popes', 'Ionut', '0217011010');
INSERT INTO agenda VALUES (6, 'Popesc', 'Rares', '0217011010');
INSERT INTO agenda VALUES (7, 'Neres', 'Radu', '0217011010');
INSERT INTO agenda VALUES (8, 'Cineva', 'Vasile', '0217011010');
INSERT INTO agenda VALUES (9, 'Altcineva', 'James', '0217011010');

SELECT * FROM agenda;

INSERT INTO agenda (ID, Nume, Prenume) VALUES (124, 'Bourne', 'James');
INSERT INTO agenda (ID, Nume, Prenume) VALUES (994, 'Geros', 'Axinte');

COMMIT;

DELETE FROM agenda WHERE ID = 4;

alter table agenda
add constraint id primary key (id); 

create sequence PK_agenda; 
insert into agenda values (PK_agenda.NEXTVAL, 'Andrei','Vasile','0135155150'); 
insert into agenda values (PK_agenda.NEXTVAL, 'Andrei','Vasile','0135155150'); 

ALTER TABLE agenda ADD DataNast DATE; 

ALTER TABLE agenda ADD Adresa varchar2(20);
ALTER TABLE agenda ADD Oras varchar2(20);

UPDATE agenda SET DataNast = DATE'1980-08-20' where ID = 1;
UPDATE agenda SET DataNast = TO_DATE('20-08-1980', 'DD-MM-YYYY') where ID = 2; 

CREATE TABLE Angajati (
ID number(3) PRIMARY KEY,
Nume varchar2(20) NOT NULL,
Prenume varchar2(20) NOT NULL,
CNP char(13) NOT NULL,
Salariu number(10));

DROP TABLE angajati;

ALTER TABLE angajati ADD Data_Nast DATE;
create sequence PK_angajati; 
insert into angajati values (PK_angajati.NEXTVAL, 'Vasilescu', 'Rares', '223459398', 3000,TO_DATE('05-oct-07', 'DD-MON-YY'));
insert into angajati values (PK_angajati.NEXTVAL, 'Filote', 'Mihail', '19483159', 250,TO_DATE('20-aug-1999', 'DD-MON-YY'));
insert into angajati values (PK_angajati.NEXTVAL, 'Dumitrache', 'Alexandra', '09256821', 2500,TO_DATE('13-mar-00', 'DD-MON-YY'));

SELECT * FROM angajati;

UPDATE angajati SET SALARIU = 3100 where ID = 5;
UPDATE angajati SET SALARIU = 450 where ID = 6;
UPDATE angajati SET SALARIU = (salariu*(10/100) + salariu) where ID = 7;

ALTER TABLE angajati MODIFY salariu default 1000;


insert into angajati (ID, Nume, Prenume, CNP) values (PK_angajati.NEXTVAL, 'Maer', 'Vladut', '1294158');
insert into angajati (ID, Nume, Prenume, CNP) values (PK_angajati.NEXTVAL, 'Petrescu', 'Ovidiu', '129385106');

Update angajati
set Nume = upper(nume) where ID >= 5 and ID<=10;

DElete From angajati where mod (salariu,5)=0;



