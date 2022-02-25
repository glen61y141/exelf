#include <stdio.h>
#include <stdlib.h>

extern int foo(void);

int main(int argc, char *argv[])
{
	foo();

	return 0;
}