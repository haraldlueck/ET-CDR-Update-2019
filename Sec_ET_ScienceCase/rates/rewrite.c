#include<math.h>
#include<stdio.h>
#include<stdlib.h>

int main(int argc, char **argv)
{
	double z1, z2, x, dx;
	FILE *fp1, *fp2;

	if(argc!=3)
	{
		fprintf(stderr, "Usage: %s mean var\n",argv[0]);
		exit(1);
	}
	fp1 = fopen(argv[1],"r");
	fp2 = fopen(argv[2],"r");

	while( (fscanf(fp1, "%le %le", &z1, &x) != EOF) &&
	       (fscanf(fp2, "%le %le", &z2, &dx) != EOF) )
	{
		if(z1 != z2)
		{
			fprintf(stderr, "Unequal redshifts in files\n");
			exit(1);
		}
		fprintf(stdout, "%e %e %e\n", z1, x, 2*dx);
	}
	fclose(fp1);
	fclose(fp2);
	return 0;
}
