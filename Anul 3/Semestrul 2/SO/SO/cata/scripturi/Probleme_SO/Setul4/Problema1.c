// interclaseaza 2 fisiere primite ca paramtreu, Rezultatul este scris in fisierul OUT.txt
#include<stdio.h>
#include<stdlib.h>
main(int argc , char *argv[])
{   FILE *file1;
    FILE *file2;
    FILE *file3;
    file1=fopen(argv[1], "r");
    file2=fopen(argv[2], "r");
    file3=fopen("OUT.txt", "w+");
    char vector[200];
    char ch1;
    char ch2;

    while (((ch1=fgetc(file1)) != EOF) && ((ch2 = fgetc(file2)) != EOF))
    {
        if (ch1 != EOF)             
        {   ungetc(ch1, file1);
            fgets(vector, 199, file1);
            fputs(vector, file3);
        }
        if (ch2 != EOF)
        {   ungetc(ch2, file2);
            fgets(vector, 199, file2);
            fputs(vector, file3);
        }
    }
    if ((ch1 = fgetc(file1)) != EOF)
    {	ungetc(ch1, file1);
        fgets(vector, 199, file1);
        fputs(vector, file3);
	while ((ch1 = fgetc(file1)) != EOF)
	{   ungetc(ch1, file1);
            fgets(vector, 199, file1);
            fputs(vector, file3);}
    }
    if ((ch2 = fgetc(file2)) != EOF)
    {
        ungetc(ch2, file2);
        fgets(vector, 199, file2);
        fputs(vector, file3);
	while ((ch2 = fgetc(file2)) != EOF)
	{   ungetc(ch2, file2);
            fgets(vector, 199, file2);
            fputs(vector, file3);}
    }
    fclose(file1);
    fclose(file2);
    fclose(file3);
    return 0;
}
