Algoritmo "Matrizes"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor    : Silvia Fiacador
// Descri��o    : Matrizes
// Autor(a)     : Lucas Arifa
// Data atual   : 8/19/2020
Var
   numeros : vetor [1..3,1..2] de inteiro
   i, j    : inteiro
Inicio

   para i de 1 ate 3 faca
      para j de 1 ate 2 faca
         escreva("Insira um n�mero na posi��o de COLUNA ",j," e LINHA ",i," :")
         leia(numeros[i,j])
      fimpara
   fimpara

   para i de 1 ate 3 faca
      escreva("| ",numeros[i]," -")
      para j de 1 ate 2 faca
         escreva(" ",numeros[j]," |")
      fimpara
   fimpara

Fimalgoritmo