.text
.global SOMA_V
.type SOMA_V, "function"

SOMA_V: mov W4, 0 //soma
LOOP:	cbz W1, fim
		ldr W2, [X0]
		add W4, W4, W2
		sub W1, W1, 1
		add X0, X0, 4
		b LOOP;


fim:    ret
