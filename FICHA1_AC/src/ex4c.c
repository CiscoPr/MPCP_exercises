#include <stdio.h>
#include <stdlib.h>

int nheca(){
	char c[]={'A', 'b', 'E', '\0'};
	int res;
	res=VOWELS(c, res);
	printf("Número de vogais= %d\n", res);
	return EXIT_SUCCESS;
}
