#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <string.h>
#include <sys/wait.h>

void generateRandomNumbers (int n, int*v)
{
	for (int i=0; i<n; i++)
	{
		v[i] = rand()%1000; //numere de la 0 la 999
	}
}

int main (int argc, char **argv)
{
	int n; //dimensiunea vectorului
	int fd[2];
	if (pipe(fd) <0)
	{
		printf("Eroare creare pipe");
	}
	if (argc !=2)
	{
		printf("Usage %s <vector_size>:", argv[0]);
		exit(2);
	}
	n = atoi(argv[1]);
	int *numbers = malloc(n  * sizeof(int));
	generateRandomNumbers(n, numbers);
	for (int i=0; i<n; i++)
	{
		char str[10];
		sprintf(str, "%d\n",  numbers[i]);
		if (write(fd[1], str, strlen(str)) <0)
		{
			printf("Eroare la scriere");
		}
	}
	
	int pid = fork();
	if (pid == 0)
	{
		close(fd[1]);
		dup2(fd[0], 0);
		execlp("sort", "sort", "-n", NULL);
	}
	close(fd[0]);
	close(fd[1]);
	wait(NULL);
	exit(0);
	
	
}
