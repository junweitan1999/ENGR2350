#include<c8051_SDCC.h>
#include<stdio.h>


main(){

	int quotient;
	int remainder;
	int rand_var;
	Sys_Init();

	putchar(" ");
	
	rand_var = rand() % 255;

	quotient = rand_var / 16;
	remainder = rand_var % 16;
	printf("%X", rand_var);
}