#include<stdio.h>
#include<stdlib.h>
main(int argc , char *argv[])
{
    char file1[10], file2[10];
 

    FILE *fptr1, *fptr2, *fptr3;
    fptr1=fopen(argv[1], "r");
    fptr2=fopen(argv[2], "r");
    fptr3=fopen("f3", "w+");
    char str1[200];
    char ch1, ch2;

    while (((ch1=fgetc(fptr1)) != EOF) && ((ch2 = fgetc(fptr2)) != EOF))
    {
        if (ch1 != EOF)             
        {
            ungetc(ch1, fptr1);
            fgets(str1, 199, fptr1);
            fputs(str1, fptr3);
          
        }
        if (ch2 != EOF)
        {
            ungetc(ch2, fptr2);
            fgets(str1, 199, fptr2);
            fputs(str1, fptr3);
        }
    }


    if ((ch1 = fgetc(fptr1)) != EOF)
    {
            ungetc(ch1, fptr1);
            fgets(str1, 199, fptr1);
            fputs(str1, fptr3);
	while ((ch1 = fgetc(fptr1)) != EOF)
	{
  	    ungetc(ch1, fptr1);
            fgets(str1, 199, fptr1);
            fputs(str1, fptr3);
	}
    }

    if ((ch2 = fgetc(fptr2)) != EOF)
    {
            ungetc(ch2, fptr2);
            fgets(str1, 199, fptr2);
            fputs(str1, fptr3);
	while ((ch2 = fgetc(fptr2)) != EOF)
	{
  	   ungetc(ch2, fptr2);
            fgets(str1, 199, fptr2);
            fputs(str1, fptr3);
	}
    }

   
    fclose(fptr1);
    fclose(fptr2);
    fclose(fptr3);
}
