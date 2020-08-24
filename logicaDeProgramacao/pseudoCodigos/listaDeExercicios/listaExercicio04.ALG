Algoritmo "Primeira Aula - VisualG"

Var
   i1, i2     : inteiro
   a          : inteiro
   n1, n2     : caractere
   subtracao1 : inteiro
   subtracao2 : inteiro
Inicio
   escreva ("em que ano estamos?(sem abreviaçoes)")
   leia (a)
   escreva ("qual o nome da primeira pessoa?(sem abreviaçoes)")
   leia (n1)
   escreva ("ano de nascimento?(sem abreviaçoes)")
   leia (i1)
   escreva ("qual o nome da segunda pessoa?(sem abreviaçoes)")
   leia (n2)
   escreva ("ano de nascimento?(sem abreviaçoes)")
   leia (i2)
   subtracao1 <- (a - i1)
   subtracao2 <- (a - i2)
   se (subtracao1 >= subtracao2) Entao
      se (subtracao1 > subtracao2) entao
         escreva (n1)
         escreva (subtracao1)
         escreva (" anos")
         escreva (" mais ")
         escreva ("velho ")
         escreva ("que ")
         escreva (n2)
         escreva (" ")
         escreva (subtracao2)
         escreva (" anos.")
      senao entao
         escreva (n1)
         escreva (" ")
         escreva (subtracao1)
         escreva (" anos")
         escreva (" mesma idade que ")
         escreva (n2)
         escreva (" ")
         escreva (subtracao2)
         escreva (" anos.")
      fimse
   senao entao
      escreva (n2)
      escreva (" ")
      escreva (subtracao2)
      escreva (" anos ")
      escreva ("mais")
      escreva (" velho ")
      escreva ("que ")
      escreva (n1)
      escreva (" ")
      escreva (subtracao1)
      escreva (" anos.")
   fimse
Fimalgoritmo
