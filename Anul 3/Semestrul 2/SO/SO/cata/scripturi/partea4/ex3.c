#include <stdio.h>
#include <stdlib.h>


void replaceAChar(char ch_to_rep,char replace_char,char* name)
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

void deleteALine()
{
   FILE *fileptr1, *fileptr2;
        char filename[10];
        char ch;
        int delete_line, temp = 1;

        printf("Numele fisierului: ");
        scanf("%s", filename);
        
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
        printf("\nFisierul dupa stergerea liniei:\n");
        fileptr1 = fopen(filename, "r");
        ch = getc(fileptr1);
        while (ch != EOF)
        {
            printf("%c", ch);
            ch = getc(fileptr1);
        }
        fclose(fileptr1);
       
     

}

void appendToFile(char* line_to_append)
{
        FILE *fileptr;
        char filename[10];
        char ch;
        printf("Numele fisierului: ");
        scanf("%s", filename);
        fileptr = fopen(filename, "a");
         fprintf(fileptr, "%s", line_to_append);
}


main()
{
   char file[10];
 
    printf("Numele fisierului: ");      
    scanf("%s", file);
    replaceAChar('i','a',file);
    deleteALine();
    appendToFile("muuuuult");
       
   
}
