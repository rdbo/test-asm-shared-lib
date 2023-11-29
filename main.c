#include <stdio.h>
#include <unistd.h>
#include <dlfcn.h>

int main(int argc, char **argv)
{
	if (argc < 2) {
		printf("missing argument\n");
		return -1;
	}

	dlopen(argv[1], RTLD_LAZY);

	return 0;
}
