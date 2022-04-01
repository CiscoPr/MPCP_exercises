.text
.global VECTORS
.type VECTORS, "function"

VECTORS:	fmov X7, 0

loop:		ldr Q0, [X0], #16
			ldr Q1, [X1], #16
			sub W2, W2, 4
			mul V2.4S, V0.4S, V1.4S
			saddlv D3, V2.4S
			fmov X6, D3
			add X7, X7, X6
			cbz W2, fim

fim:		mov X0, X7
			ret
