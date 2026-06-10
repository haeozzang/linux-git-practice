#include <stdio.h>
#include "binary.h"

void binary(int value)
{
	if (value > 1)
		binary(value / 2);

	printf("%d", value % 2);
}
