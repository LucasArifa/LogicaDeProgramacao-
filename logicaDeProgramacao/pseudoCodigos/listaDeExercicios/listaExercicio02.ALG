Algoritmo "Primeira Aula - VisualG"

Var
 num1, num2 : real

Inicio

escreva ("escolha um numero:")
  leia (num1)
escreva ("escolha um número diferente:")
  leia (num2)
se ( num1 >= num2) entao
  se (num1 > num2) entao
    escreva (num1)
    escreva (" maior que ")
    escreva (num2)
   senao
    escreva (num1)
    escreva ("igual a")
    escreva (num2)
fimse
senao entao
  escreva (num1)
  escreva (" menor que ")
  escreva (num2)
fimse
Fimalgoritmo
