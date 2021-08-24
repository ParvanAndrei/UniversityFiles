
#include<stdio.h>
#include<stdlib.h>

int main(int argc , char *argv[])
{
	int nr_c = 0;
        int nr_s = 0;
        int nr_w = 0;
        int nr_l = 0;
        char ch;
        FILE *fp;

        fp = fopen(argv[1],"r");

        while((ch=fgetc(fp))!=EOF)
        {
        	nr_c++;
                if(ch == ' '){
                 	nr_s++;
                        nr_w++;}
                 if(ch == '\n') nr_l++;
         }
         printf("Caractere = %d\n",nr_c);
         printf("Spatii = %d\n",nr_s);
         printf("Cuvinte = %d\n",nr_w+3);
         printf("Linii = %d\n",nr_l);
	 return 0;

}
