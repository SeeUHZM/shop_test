#include <stdio.h>
#include "add.h"
#include "sub.h"
#include "mul.h"
#include "div.h"


int main(int argc, char *argv[])
{
	int a = 2;
	int b = 3;
	printf("%d + %d = %d\n", a, b, add(a, b));
	printf("%d - %d = %d\n", a, b, sub(a, b));
	printf("%d * %d = %d\n", a, b, mul(a, b));
	printf("%d / %d = %d\n", a, b, div(a, b));


}
