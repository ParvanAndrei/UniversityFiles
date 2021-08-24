/* seciteste dintr-un fisier un array
 si afiseaza arrayul sortat*/
#include<stdio.h>

int main(int argc, char* argv[])
{
int nums[50]={0};
int i =0;
FILE * fp;

if (fp = fopen(argv[1],"r")){
	while(fscanf(fp, "%d",&nums[i]) != EOF){
		i++;
	}
	fclose(fp);
}
int j=0,k=0;
for (j = 0; j<i; j++ )
{
	for (k=0;k<i;k++)
	{
		if (nums[k]>nums[j])
		{
			int temp =nums[j];
			nums[j] = nums[k];
			nums[k] = temp;
		}
	}
}
for (--i; i >= 0; --i)
	printf("num[%d] = %d\n",i, nums[i]);

return 0;
}
