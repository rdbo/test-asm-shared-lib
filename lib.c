#include <stdio.h>

extern void my_function();
extern unsigned long my_function_size;
int mynumber = 1337;

void __attribute__((constructor))
dl_entry()
{
	printf("my_function size: %lu\n", my_function_size);
	printf("calling my_function...\n");
	my_function();
	printf("my_function called\n");
}
