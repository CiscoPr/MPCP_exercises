.text
.global POLI
.type POLI, "function"


POLI:	str X20, [SP, #-16]!
		mov X10, X0
		bl QUAD
		mov X20, X0			//X20=x^2
		mov X0, 3			//X0=3
		mul X10, X10, X0	//X10=3X
		add X0, X20, X10	//X0=x^2+3x
		add X0, X0, 1		//X0=x^2+3x+1
		ldr X20, [SP], #16
		ret
QUAD:	mul X20, X20, X0	//X0=x^2
		ret
