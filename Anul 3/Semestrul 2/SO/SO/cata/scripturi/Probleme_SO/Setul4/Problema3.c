//operati de stergere, inlocuire si adaugare pe un fisier

#include <stdio.h>
#include <stdlib.h>


void append(char* line,char* filename)
{
        FILE *fileptr;
        char ch;
        fileptr = fopen(filename, "a");
        fprintf(fileptr, "%s", line);
}


void replace(char ch_to_rep,char replace_char,char* name)
{
  FILE *file;
  char ch;
   file = fopen(name, "r+");
   while ((ch = fgetc(file)) != EOF)
    {
        if (ch == ch_to_rep)
        {
            fseek(file, -1, SEEK_CUR);
            fputc(replace_char,file);
            fseek(file, 0, SEEK_CUR);
        }
    }
    fclose(file);

}

void delete(char* filename)
{
   FILE *fileptr1, *fileptr2;
        char ch;
        int delete_line, temp = 1;
        
        fileptr1 = fopen(filename, "r");
        ch = getc(fileptr1);
        while (ch != EOF)
        {
            printf("%c", ch);
            ch = getc(fileptr1);
        }
        rewind(fileptr1);
        printf(" \nNumarul liniei pentru stergere:");
        scanf("%d", &delete_line);
        
        fileptr2 = fopen("temp", "w");
        ch = getc(fileptr1);
        while (ch != EOF)
        {
            ch = getc(fileptr1);
            if (ch == '\n')
            {
                temp++;
            }
            
            if (temp != delete_line)
            {
                putc(ch, fileptr2);
            }
        }
        fclose(fileptr1);
        fclose(fileptr2);
        remove(filename);
        rename("temp", filename);     

}


int main()
{
	char file[10];
	char apend[50];
	printf("Fisier: ");      
	scanf("%s", file);
	printf("Inlocuire 'a' cu 'b':\n");
    	replace('a','b',file);
    	delete(file);
	printf("Linia de adaugat:");
	scanf("%s",apend);
    	append(apend,file);
	return 0;
   
}

