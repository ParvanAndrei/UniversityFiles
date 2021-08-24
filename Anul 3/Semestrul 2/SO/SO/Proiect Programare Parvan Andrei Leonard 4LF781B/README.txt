  I. PROGRAME NECESARE

pentru a rula un program c, e nevoie de a instala compilatorul gcc
compilatorul gcc se instaleaza pe o distributie linux utilizand urmatoarele comenzi:

1. sudo apt-get update
2. sudo apt-get install build-essential 
3. sudo apt-get install manpages-dev


Ulterior pentru e verifica instalarea acestuia sa scrie urmatoarea comanda in terminal:
gcc --version


   II. CUM SA RULEZI PROGRAMUL
Dupa ce s-a scris programul C, pentru a-l compila si rula se tasteaza urmatoarele comenzi:

1. gcc nume_fisier.c -o nume_fisier
2. make nume_fisier
3. ./nume_fisier


  III. Versiuni
1.GGC - gcc (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
