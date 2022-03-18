.text
.global MAX_V
.type MAX_V, "function"

max_v:	ldr W3, [X0]   //mantém o máximo
loop:	cbz W1, Fim
		add X0, X0, 4
		ldr W2, [X0]
		sub W1, W1, 1
		cmp W3, W2
		b.ge loop
		mov W3, W2
		b loop
Fim:	mov W0, W3
		ret
