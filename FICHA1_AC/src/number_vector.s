.text
.global INTERVALO
.type INTERVALO, "function"


INTERVALO: mov W7, 0
loop:	   ldr W4,[X0]
		   add X0, X0, 4
		   sub X1, X1, 1
		   cmp W4, W2
		   b.lt loop
		   cmp W4, W3
		   b.gt loop
		   add W7, w7, 1
		   b loop
fim:	   mov W0, W7
		   ret
