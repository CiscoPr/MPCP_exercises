str X0, [SP, #-16]!
//guarda o valor de X0 na pos da stack com valor  0x6ff0, com indexação
ldr X2, [SP], #16
//o registo X2, vai receber o valor do stack pointer (0x0E) só que sem indexação da stack
stp X1, X0, [SP, #-16]!
//guarda o valor de X1, seguido do de X0 na pos 0x6ff0 e 0x6ff8, respetivamente, com indexação
