Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Silvia Fiacador
// Descrição   : Calculadora Básica
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
   Escreva("Escolha a operação + - * / : ")
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
         escreval ("Impossível dividir por zero!")
      senao entao
         resultado <- numero1 / numero2
      fimse
   outrocaso
      escreval("Operador Inválido!")
   fimescolha

   //saída
   escreval("Resultado = ", resultado)

Fimalgoritmo