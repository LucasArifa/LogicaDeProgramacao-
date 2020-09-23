Algoritmo "Exercício 6"

Var
   vm, dist, h, ms, t   : REAL

Inicio
   ESCREVAL ("INFORME A DISTANCIA EM KM ")
   LEIA (dist)
   ESCREVAL ("INFORME O TEMPO EM HORAS ")
   LEIA (h)

   vm <- dist / h
   ms <- vm / 3.6
   t <- dist / vm

   ESCREVA (vm)
   ESCREVA ("KM/H")
   ESCREVAL (" ")
   ESCREVA (ms)
   ESCREVA ("M/S")
   ESCREVAL (" ")
   ESCREVA ("DEMORA ")
   ESCREVA (t)
   ESCREVA (" ")
   ESCREVAL ("H DE SP A RJ.")
Fimalgoritmo
