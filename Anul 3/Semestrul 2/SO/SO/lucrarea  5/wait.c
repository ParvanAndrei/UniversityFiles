#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
	if (fork()==0)
		printf("HC: child\n");
	else
	{
		printf("HP: parent\n");
		wait(NULL);
		printf("CT: child finished\n");
	}
	
	printf("end\n");
	return 0;
}