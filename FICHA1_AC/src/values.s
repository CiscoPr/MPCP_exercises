.text
.global VALUES
.type VALUES, "function"

VALUES: mov W7, 0
loop:	cbz X0, fim
		ands X2, X0, 1
		lsr X0, X0, 1
		b.eq loop
		add W1, W1, 1
		b loop
fim:	mov W0, W1
		ret
