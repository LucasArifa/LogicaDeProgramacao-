Algoritmo "Exerc�cio4-vetores"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Fiacador
// Descri��o   : Rela�ao entre casos e mortes.
// Autor(a)    : Lucas Arifa
// Data atual  : 8/12/2020
var

   casos : vetor [0..5] de real
   mortes : vetor [0..5] de real
   totalCasos, totalMortes, relacaoCasosMortes : real
   linha : inteiro
   
inicio

   para linha <-0 ate 14 faca

      escreval("insira o nome do TOTAL DE CASOS: ")
      escreval("insira o nome TOTAL DE MORTES: ")
      leia(mortes[linha])

      totalCasos <- totalCasos+casos[linha]
      totalMortes <- totalMortes+mortes[linha]

   fimpara
   
   relacaoCasosMortes <-(totalMortes/totalCasos)*100
   
   escreval("RELA��O ENTRE CASOS E MORTES - ",relacaoCasosMortes, "%")
   
Fimalgoritmo