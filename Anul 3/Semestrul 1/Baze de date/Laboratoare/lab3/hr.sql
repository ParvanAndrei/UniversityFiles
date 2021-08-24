CREATE TABLE Carti (
Cod NUMBER(4) PRIMARY KEY,
Titlu VARCHAR(20),
Autor VARCHAR(20),
Data_ap DATE CHECK (Data_ap > DATE'2000-01-01'),
UNIQUE (Titlu, Autor, Data_ap) );

INSERT INTO Carti (Cod, Titlu, Autor)
VALUES (4,'Amintiri', 'Caragiale');

UPDATE Carti
SET data_ap = TO_DATE('2006-12-10', 'yyyy-mm-dd')
WHERE Cod = 4;

CREATE TABLE Clienti (
Cod_client NUMBER(4)
PRIMARY KEY,
Nume VARCHAR2(20) NOT NULL,
Adresa VARCHAR2(20),
Telefon VARCHAR2(15));

CREATE TABLE Facturi (
Nr_fact NUMBER(4) PRIMARY KEY,
Data_fact DATE,
Cod_client NUMBER(4),
Valoare NUMBER(5),
CONSTRAINT FK_Facturi FOREIGN KEY (Cod_client) REFERENCES Clienti (Cod_client));

INSERT INTO clienti
VALUES (4, 'VLAD Daniel', 'Strada Sibiu', 2341);

INSERT INTO Facturi
VALUES (22, TO_DATE('2012-10-12', 'yyyy-mm-dd'), 4, 1300);

INSERT INTO Facturi
VALUES (30, TO_DATE('2014-04-20', 'yyyy-mm-dd'), 5, 200);

DELETE FROM Clienti 
WHERE Cod_client = 1;

INSERT INTO clienti
VALUES (5, 'Parvan Andrei', 'Strada Cosminele', 7774);

DELETE FROM Facturi
WHERE data_fact = TO_DATE('2012-10-19','yyyy-mm-dd');

ALTER TABLE Facturi DROP CONSTRAINT FK_Facturi;

ALTER TABLE Facturi ADD CONSTRAINT FK_Facturi
 FOREIGN KEY (Cod_client) REFERENCES Clienti(Cod_client) ON DELETE CASCADE;
 

CREATE TABLE Cabinet (
cod_cabinet NUMBER PRIMARY KEY,
nume VARCHAR2(20),
dotari VARCHAR2(30));

CREATE TABLE Medic (
cod_medic NUMBER(2) PRIMARY KEY,
nume VARCHAR2(20),
prenume VARCHAR2(20),
specializare VARCHAR2(20),
cod_cabinet NUMBER,
FOREIGN KEY(cod_cabinet) REFERENCES Cabinet(cod_cabinet) ON DELETE CASCADE);

CREATE TABLE Pacient (
cod_pacient NUMBER(2) PRIMARY KEY,
cnp NUMBER(13),
nume VARCHAR2(20),
prenume VARCHAR2(20),
tel VARCHAR2(15));

CREATE TABLE Consultatie (
cod_consultatie NUMBER(2) PRIMARY KEY,
cod_pacient NUMBER(2),
cod_medic NUMBER(2),
data_consult DATE,
mentiuni VARCHAR2(20),
FOREIGN KEY (cod_pacient) REFERENCES Pacient (cod_pacient) ON DELETE CASCADE,
FOREIGN KEY (cod_medic) REFERENCES Medic (cod_medic) ON DELETE CASCADE);

CREATE TABLE Programare( 
cod_pacient NUMBER(2),
cod_medic NUMBER(2),
data_programarii DATE,
FOREIGN KEY (cod_pacient) REFERENCES Pacient (cod_pacient) ON DELETE CASCADE,
FOREIGN KEY (cod_medic) REFERENCES Medic (cod_medic) ON DELETE CASCADE);

INSERT INTO Cabinet
VALUES (1, 'Cardiologie', 'EKG,Echograf');

INSERT INTO Cabinet
VALUES (2, 'Oftalmologie', 'Oftalmoscop,Tonometru');

INSERT INTO Cabinet (cod_cabinet, nume)
VALUES (3, 'Medicina Interna');

INSERT INTO Medic
VALUES (1, 'Popescu', 'Florin', 'Cardiolog', 1);

INSERT INTO Medic
VALUES (2, 'Ionescu', 'Dan', 'Cardiolog', 1);

INSERT INTO Medic
VALUES (3, 'Ionescu', 'Mihnea', 'Oftalmologie', 2);

INSERT INTO Pacient 
Values (1, 12345,'Popescu', 'Vasile', 0124);

INSERT INTO Pacient
VALUES (2, 17144, 'Manolescu', 'Dan', 0425);

INSERT INTO Pacient
VALUES (3, 27144, 'Florescu', 'Adina', 0745);

INSERT INTO Consultatie
VALUES (1,1,1, TO_DATE('2012-10-23','yyyy-mm-dd'), 'observatie 1');

INSERT INTO Consultatie
VALUES (2,3,2, TO_DATE('2012-10-20','yyyy-mm-dd'), 'observatie 2');

INSERT INTO Programare
VALUES (1,1, TO_DATE('2012-10-23', 'yyyy-mm-dd'));

INSERT INTO Programare
VALUES (3,2, TO_DATE('2012-10-20', 'yyyy-mm-dd'));


CREATE TABLE Echipa (
cod_echipa NUMBER(2) PRIMARY KEY,
nume VARCHAR2(20),
localitate VARCHAR2(20),
adresa VARCHAR2(20));

CREATE TABLE Jucator (
cod NUMBER(2),
nume VARCHAR2(20),
prenume VARCHAR2(20),
CONSTRAINT FK_cod
 FOREIGN KEY (cod) 
 References Echipa (cod_echipa) ON DELETE SET NULL);
 
 INSERT INTO Echipa 
 Values (1, 'Manchester Utd', 'Manchester', 'groove street');
 
INSERT INTO Echipa 
 Values (2, 'Manchester City', 'Manchester', 'Almanaha street');
 
 INSERT INTO Jucator
 VALUES (1, 'Mares', 'Adrian');
 
INSERT INTO Jucator
 VALUES (2, 'Voica', 'Adrian');
 
 DELETE FROM Echipa WHERE cod_echipa = 1;
 
 CREATE TABLE Carte (
 cod_carte NUMBER(3) PRIMARY KEY,
 nume VARCHAR2(20),
 editura VARCHAR2(20),
 nr_pg NUMBER(3));
 
 CREATE TABLE Cititor (
cod_cititor NUMBER (3) PRIMARY KEY,
nume VARCHAR2(20),
prenume VARCHAR2(20),
CONSTRAINT FK_cod_cititor
FOREIGN KEY (cod_cititor) 
REFERENCES Carte (cod_carte) ON DELETE SET NULL);

INSERT INTO CARTE 
VALUES (1, 'Codul', 'Corint', 200);

INSERT INTO Carte
VALUES (2, 'Colt Alb', 'Bucuresti', 350);

INSERT INTO CITITOR
VALUES (1, 'Popescu', 'Stefan');