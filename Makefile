all:
	cc -o main -g main.c
	cc -o libtest.so -shared -fPIC lib.c test.S
