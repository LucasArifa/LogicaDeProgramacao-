Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Fiacador
// Descri��o   : Calculadora B�sica
// Autor(a)    : Lucas Arifa
// Data atual  : 8/10/2020
Var
   numero1, numero2,resultado : real
   operacao : caracter

Inicio

   //entrada
   Escreva("Digite o Numero 1: ")
   leia(numero1)
   Escreva("Digite o Numero 2: ")
   leia(numero2)
   Escreva("Escolha a opera��o + - * / : ")
   leia(operacao)

   //processamento
   escolha operacao
   caso "+"
      resultado <- numero1 + numero2
   caso "-"
      resultado <- numero1 - numero2
   caso "*"
      resultado <- numero1 * numero2
   caso "/"
      se numero1 = 0 entao
         escreval ("Imposs�vel dividir por zero!")
      senao entao
         resultado <- numero1 / numero2
      fimse
   outrocaso
      escreval("Operador Inv�lido!")
   fimescolha

   //sa�da
   escreval("Resultado = ", resultado)

Fimalgoritmo