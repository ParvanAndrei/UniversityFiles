#include <stdio.h>
#include <stdlib.h>
void main(){
int n, i, j, m;
// se citesc dimensiunile matricii, m ¸si n:
printf("n=");
scanf("%d",&n);
printf("m=");
scanf("%d",&m);
//se aloc˘a matricea:
int **a;
a=(int **)calloc(n,sizeof(int *));
if (a==NULL){
perror("Memorie insuficienta!");
exit(1);
}
//se aloc˘a fiecare linie ˆın parte:
for( i=0;i<n;i++){
a[i]=(int *)calloc(m,sizeof(int));
if (a[i]==NULL){
perror("Memorie insuficienta!");
exit(1);
}
}
//se cite¸ste de la tastatur˘a matricea:

for(i=0;i<n;i++)
for( j=0;j<m;j++){
printf("a[%d][%d]=",i,j);
scanf("%d",&a[i][j]);
}
// se elibereaz˘a memoria. Se elibereaz˘a ˆıntai fiecare a[i] ¸si apoi

for( i=0;i<n;i++) free(a[i]);
free(a);
}

