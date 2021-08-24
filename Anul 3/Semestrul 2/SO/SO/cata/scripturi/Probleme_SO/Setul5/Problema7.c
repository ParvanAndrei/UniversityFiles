#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <sys/mman.h>

static int *glob_var;
int *temp;
int i;
int *temp2;

int cmmdc(int a, int b)
{
	while(a!=b)
	{
		if (a>b)
			a=a-b;
		else
			b=b-a;
	}	
	return a;
}

void recursiv(int sir[], int size)
{	
	//printf("Pasul1-intra in fct size = %d\n", size);
	if(size>1)
	{
		pid_t pid=fork();
		if(pid==0)
		{			
			//printf("valori copil:");
			temp=(int*)malloc(size/2*sizeof(int));
			for(i=0; i< size/2;i++)
				{
					*(temp+i)=sir[i];}
					//printf("%d ",*(temp+i));
			//printf("\n");
			recursiv(temp,size/2);
			free(temp);
			exit(0);
		}
		wait(NULL);
		temp2=(int*)malloc(size/2*sizeof(int));
		if (size%2==1)
			if (size!=1)	 
				{
					//printf("Nr = %d\n",sir[size-1]);
					size=size-1;
					*glob_var=cmmdc(*glob_var,sir[size]);
					//suma sau cmmdc
					
				}
		//printf("valori parinte: ");
		for(i=size/2;i<size;i++)
			{
			int a =i-size/2;
			*(temp2+a)=sir[i];
			//printf("%d ",*(temp2+a));
			}
		//printf("\n");
		recursiv(temp2,size/2);
	}else
	{	
		if (*glob_var<0)
		{	
			*glob_var=sir[0];
		}else{
			*glob_var=cmmdc(*glob_var,sir[0]);		
		} 
		//printf("Array<2, global %d\n", *glob_var);
	}

}


int main(int argc, char *argv[])
{
	int status=0;
	glob_var = mmap(NULL,sizeof *glob_var, PROT_READ | PROT_WRITE, MAP_SHARED | MAP_ANONYMOUS, -1, 0 );
	*glob_var = -1;
	int nr;
	printf("Introdu nr elementelor: ");
	scanf("%d",&nr);
	int *n=(int*)malloc(nr*sizeof(int));
	printf("Elemente:\n");
	for(i=0;i<nr;i++)
		scanf("%d",&n[i]);
	//int n[10]={84,196,84,84,196,196,84,84,196,84};	
	recursiv(n,nr);
	printf("CMMDC = %d\n",*glob_var);
	munmap(glob_var,sizeof *glob_var);
	return 0;
}
