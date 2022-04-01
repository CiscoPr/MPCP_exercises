.text
.global INTERVAL
.type INTERVAL, "function"

INTERVAL:	ldr S3, [X0], #4//element of X0
			mov X5, 0		//counter

LOOP:		cbz X1, fim		//number of elements iterated
			fcmp S3, S0		//compare element of array to A
			b.lt iterate
			fcmp S3, S1		//compare element of array to B
			b.gt iterate
			add X5, X5, 1	//add one to the counter


iterate:	sub X1, X1, 1	//decrease de the number of element
			add X0, X0, 64
			b loop



fim:		mov X0, X5
			ret
