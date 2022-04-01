.text
.global DIST
.type DIST, "function"

DIST:	fsub S0, S0, S2		//x = x1-x2
		fsub S1, S1, S3		//y = y1-y2
		fmul S0, S0, S0		//(x1-x2)^2
		fmadd S0, S1, S1, S0//(x1-x2)^2+(y1-y2)^2
		fsqrt S0, S0		//d
		ret
