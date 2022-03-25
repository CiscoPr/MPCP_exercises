a) cmp X0, 0
   cneg X0, X0, LT

   //Calcula-se o módulo do valor no registo X0


b) cmp X1, X2
   csel X0, X1, X2, GT
   cmp X0, X3
   csel X0, X0, X3, GT

   //Em X0, encontra-se o valor máximo dos registos X1, X2 e X3
