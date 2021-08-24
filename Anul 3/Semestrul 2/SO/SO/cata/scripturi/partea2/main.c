#include <stdio.h>
#include <conio.h>

int semn(int a);
void main()
{
    int a;
    printf("Introdu un intreg: ");
    scanf("%d",&a);
    printf("\n%d",semn(a));
    getch();

}
int semn(int a)
{
    if (a>0)
        return 1;
       else
         if (a==0)
          return 0;
            else return -1;
}
