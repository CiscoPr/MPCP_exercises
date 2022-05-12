.text
.global sumsubseq
.type sumsubseq, "function"

sumsubseq:  ldr W2, [X0]
			cbz W1, fim
			mov W7, W2
			sub W1, W1, 1
loop:		cbz W1, fim
			add X0, X0, 4
			sub W1, W1, 1
			ldr W3, [X0]
			cmp W2, W3
			b.GE loop


op:			add W7, W7, W3
			mov W2, W3
			b loop


fim: mov W0, W7
	 ret
