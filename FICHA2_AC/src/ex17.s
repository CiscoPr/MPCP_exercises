.text
.global conta_ocorr
.type conta_ocorr, "function"

conta_ocorr:	mov X7, 0
loop:			ldr Q0, [X0], 16
				fmov B2, W2
				dup V1.16B, B2
				cmeq V3.16B, V0.16B, V1.16B
				saddlv D6, V3.16B
				fmov X6, D6
				add X7, X7, X6
				b loop
fim:			mov X0, X7
				neg X0, X0
				ret
