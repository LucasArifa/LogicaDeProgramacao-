Algoritmo "Ordenamento de vetores"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Fiacador
// Descri��o   : Ordea��o de Vetores - Bubble Sort

// Autor(a)    : Lucas Arifa
// Data atual  : 8/19/2020
Var
   numeros: vetor [1..5] de inteiro
   posicao, posteste ,aux : inteiro

Inicio
   para posicao de 1 ate 5 faca
      escreval("INCLUA O ",posicao,"� N�MERO NO VETOR: ")
      leia(numeros[posicao])
   fimpara

   para posicao de 1 ate 5 faca
      para posteste de posicao+1 ate 5 faca
         se numeros[posicao]>numeros[posteste] entao
            aux <- numeros[posteste]
            numeros[posteste] <- numeros[posicao]
            numeros[posicao] <- aux
         fimse
      fimpara
      escreva(numeros[posicao])
   fimpara
   

Fimalgoritmo