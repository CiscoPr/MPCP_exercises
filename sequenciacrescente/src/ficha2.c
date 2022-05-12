/*
 ============================================================================
 Name        : ficha2.c
 Author      : Francisco Prada
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern int sumsubseq(int*v, unsigned int N);

int main(void) {
	int n = 6;
	int v[]={-2, 5, 8, 7, 8, 4};

	int res;
	res = sumsubseq(v,n);
	printf("O resultado é %d\n", res);
	return EXIT_SUCCESS;
}
