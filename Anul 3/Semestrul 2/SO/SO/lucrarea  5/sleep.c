#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
	printf("Sleep for 5 sec...\n");
	sleep(5);
	printf("Has been sleeping for 5 sec\n");
	
	return 0;

}