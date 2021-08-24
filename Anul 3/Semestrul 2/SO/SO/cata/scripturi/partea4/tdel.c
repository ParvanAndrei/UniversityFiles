#include <stdio.h>
#include <stdlib.h>  
    int main()
    {
        FILE *fileptr1, *fileptr2;
        char filename[40];
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
       
        return 0;

    }
