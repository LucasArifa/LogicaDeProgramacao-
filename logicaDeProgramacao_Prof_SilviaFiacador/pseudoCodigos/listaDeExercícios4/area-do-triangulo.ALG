Algoritmo "Área do Triângulo"
// Disciplina  :[Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Area do Triângulo
// Autor(a)    : Luacs Arifa
// Data atual  : 8/13/2020
Var
   base, altura : inteiro
   area : real

Inicio
   escreval("|   Vamos calcular área de um triângulo   |")
   escreval("Informe o valor da base: ")
   leia(base)
   escreval("Informe o valor da altura:")
   leia(altura)

   area <- (base*altura)/2

   escreva("O triângulo com base ", base, " e altura ", altura, " tem área igual a ", area)


Fimalgoritmo