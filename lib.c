#include <stdio.h>
#include <stdlib.h>

#define EXPORT __attribute__((visibility("default")))

EXPORT int foo(void)
{
	printf("you are using a shared library.\n");
	return 0;
}

int main(int argc, char *argv[])
{
	printf("I am an executable.\n");
	return 0;
}