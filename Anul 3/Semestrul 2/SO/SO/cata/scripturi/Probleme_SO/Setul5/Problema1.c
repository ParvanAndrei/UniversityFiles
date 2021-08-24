#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <sys/mman.h>

static int *glob_var;

int main(int argc, char *argv[])
{
	int n=10;
	if (argv[1] != NULL)
		n=atoi(argv[1]);
	int i=0;
	int j=0;
	int status=0;
	int x=5;

	glob_var = mmap(NULL,n*(sizeof *glob_var), PROT_READ | PROT_WRITE, MAP_SHARED | MAP_ANONYMOUS, -1, 0 );

	for ( i=0; i<n; i++)
	{
		*(glob_var+i)=i+1;
	}
	//printf("Creating %d children\n",n);
	for (i=2;i<n;i++)
	{
		pid_t pid=fork();
		if(pid==0)
		{
		        for ( j=i+1; j<n; j++)
		        {
                		if(*(glob_var+j)%i==0)
					*(glob_var+j)=0;
        		}
			//printf("valori :");
		        //for ( j=0; j<n; j++)
		        //{
                	//	printf("%d ",*(glob_var+j));
        		//}

			munmap(glob_var,n*(sizeof *glob_var));
			//printf("\nX value in for: %d pid=%d, parent=%d\n",i, getpid(),getppid());
			exit(0);
		}
		wait(&status);
	}
	printf("Numere prime: ");
	for ( j=0; j<n; j++)
        {
		if(*(glob_var+j)!=0)
        		printf("%d ",*(glob_var+j));
        }
	printf("\n");
	return 0;
}
