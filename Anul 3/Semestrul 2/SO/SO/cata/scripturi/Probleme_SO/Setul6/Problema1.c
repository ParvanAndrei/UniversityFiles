// Afiseaza adresa IP a calculatorului
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <netdb.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
 
int main()
{
    char buffer[256];
    char *IP;
    struct hostent *host_entry;
    int hostname;
 
    hostname = gethostname(buffer, sizeof(buffer));
    host_entry = gethostbyname(buffer);
    IP = inet_ntoa(*((struct in_addr*) host_entry->h_addr_list[0]));
 
    printf("User: %s\n", buffer);
    printf("  IP: %s\n", IP);
 
    return 0;
}

