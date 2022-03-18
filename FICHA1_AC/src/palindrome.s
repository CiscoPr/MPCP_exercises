.text
.global pal
.type pal, "function"

pal:			mov X6, X0
				mov W5, 0			//string length

loop_counter:	ldrb W1, [X6]
				cbz loop2
				add W5, W5, 1
				add X6, X6, 1

loop2:			ldrb W1, [X0]
				sub X6, X6, 1
				ldrb W2, [X6]
				add X0, X0, 1
				cmp W1, W2
				b.ne fim_neg
				cmp w0, X6
				b.lt loop2
				b fim_posit

fim_posit:		mov W0, 1
				ret




fim_neg:		mov X0, 0
				ret


