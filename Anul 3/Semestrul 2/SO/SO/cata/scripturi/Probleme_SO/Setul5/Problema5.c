#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <sys/mman.h>

static int *glob_var;

int main(int argc, char *argv[])
{
	int nr[4] = {1,2,3,4};
	int nr2[4] = {5,6,7,8};
	int val1[100]={0}, val2[100]={0};
	int status=0;


	glob_var = mmap(NULL,sizeof *glob_var, PROT_READ | PROT_WRITE, MAP_SHARED | MAP_ANONYMOUS, -1, 0 );
	*glob_var=0;

	pid_t pid=fork();
	if(pid==0)
	{
		FILE* in = fopen("vector.bin","rb");
		fread(&val1,sizeof(int),100,in);
		int i=0;
		printf("Fisier 1:");
		do{
			printf("%d ", val1[i]);
			*glob_var=*glob_var+val1[i];
			i++;
		}while(val1[i]!= 0);
		munmap(glob_var,sizeof *glob_var);
		//printf("Copil: %d pid=%d, parent=%d\n",1, getpid(),getppid());
		fclose(in);
		exit(0);
	}
	wait(&status);
	FILE* in = fopen("vector1.bin","rb");
	fread(&val2,sizeof(int),100,in);
	int i=0;
	printf("\nFisier 2:");
	do{
		printf("%d ",val2[i]);
		*glob_var=*glob_var+val2[i];
		i++;
	}while(val2[i]!=0);
	//printf("Parinte %d, pid:%d\n",1,getpid());
	printf("\nSuma: %d\n",*glob_var);
	FILE * out;
	out=fopen("rezultat.bin","wb");
	if(out!=NULL)
	{
		int suma = *glob_var;
		fwrite(&suma,sizeof(int),1,out);
	}
	return 0;
}
