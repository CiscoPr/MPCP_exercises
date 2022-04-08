.text
.global incsatV
.type incsatV, "function"


incsatV:	ldr Q0, [X0]
			fmov S2, W2
			dup V1.4S, S2
			sqadd V0.4S, V0.4S, V1.4S
			str Q0, [X0], 16
			sub W1, W1, 4
			cbnz W1, incsatV
