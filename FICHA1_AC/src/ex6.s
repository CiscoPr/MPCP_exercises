.text
.global POS1msb
.type POS1msb, "function"
//determine the index of the most significative bit 1

POS1msb:	mov W1, 64 		//since X0 has 64 bits
loop:		and X2, X0, 0x8000000000000000	//bit mask equivelent to a 64 bit register with 1 as its most significative digit
			cbnz X2, fim
			lsl X0, X0, 1
			sub W1, W1, 1
			cbnz W1, loop


fim:		mov W0, W1
			ret

