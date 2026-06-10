#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "binary.h"

int main(int argc, char *argv[])
{
	int opt;
	int bflag = 0;
	int oflag = 0;
	int xflag = 0;

	while((opt = getopt(argc, argv, "box")) != -1)
	{
		switch(opt)
		{
			case 'b':
				bflag = 1;
				break;

			case 'o':
				oflag = 1;
				break;
			
			case 'x':
				xflag = 1;
				break;
		}
	}

	for(int i = optind; i < argc; i++)
	{
		int num = atoi(argv[i]);

		if(bflag)
		{
			printf("%d -> ", num);
			binary(num);
			printf(" (binary)\n");
		}

		if(oflag)
		{
			printf("%d -> %o (octal)\n", num, num);
		}

		if(xflag)
		{
			printf("%d -> %x (hex)\n", num,num);
		}

		printf("\n");
	}

	return 0;
}
