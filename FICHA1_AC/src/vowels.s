.text
.global VOWELS
.type VOWELS, "function"

VOWELS:	mov W1, 0			//result
		mov W2, 97			//a
		mov W3, 65			//A
		mov W4, 101			//e
		mov W5, 69			//E
		mov W6, 105			//i
		mov W7, 73			//I
		mov W8, 111			//o
		mov W9, 79			//O
		mov W10, 117		//u
		mov W11, 85			//U

loop:	ldrb W12, [X12]
		cbz W12, fim
		cmp W12, W2
		b.eq soma
		cmp W12, W3
		b.eq soma
		cmp W12, W4
		b.eq soma
		cmp W12, W5
		b.eq soma
		cmp W12, W6
		b.eq soma
		cmp W12, W7
		b.eq soma
		cmp W12, W8
		b.eq soma
		cmp W12, W9
		b.eq soma
		cmp W12, W10
		b.eq soma
		cmp W12, W11
		b.eq soma
		add X0, X0, 1
		b loop

soma:	add X0, X0, 1
		add W1, W1, 1
		b loop

fim:	mov W0, W1
		ret
