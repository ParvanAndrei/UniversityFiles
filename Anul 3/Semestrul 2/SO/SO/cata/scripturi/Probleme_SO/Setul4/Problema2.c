// Parcurge un director si raporteaza intr-un fisier continutul acestuia

#include <stdio.h>
#include <dirent.h>

int main( int argc, char* argv[])
{
	if (argc >0){
	DIR *d;
	struct dirent *dir;
	d = opendir(".");
	printf("director: %s\n",argv[1]);
	int nr_dir=0;
	int nr_file=0;
	if(d)
	{
		printf("chec");
		while ((dir =readdir(d)) != NULL){
			if( dir->d_type == 4) nr_dir++;
			if( dir->d_type == 8) nr_file++;
		}
		closedir(d);
		FILE *f = fopen("raport.txt","w+");
		fprintf(f, "Directorul contine %d subfoldere si %d fisiere.\n", nr_dir, nr_file);
		fclose(f);
	}
}
	return 0;
}
