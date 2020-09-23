Algoritmo "Desafio - Covid-19"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Silvia Fiacador
// Descrição   : Desafio: Covid-19
// Autor(a)    : Lucas Arifa
// Data atual  : 8/11/2020
var
   paises: vetor [0..14] de caractere
   casos : vetor [0..14] de real
   mortes : vetor [0..14] de real



   totalCasos, totalMortes, mediaCasos, mediaMortes: real

   medianaCasos, medianaMortes : real

   linha, coluna, contadorPais : inteiro

inicio

   para linha <-0 ate 14 faca
      contadorPais <- contadorPais + 1
      escreval("insira o nome do PAÍS", contadorPais, "º :")
      leia(paises[linha])
      escreval("insira o nome do TOTAL DE CASOS: ")
      leia(casos[linha])
      escreval("insira o nome TOTAL DE MORTES: ")
      leia(mortes[linha])
      
      totalCasos <- totalCasos+casos[linha]
      totalMortes <- totalMortes+mortes[linha]

   fimpara

   para linha <-0 ate 14 faca
      escreval(paises[linha]," | CASOS - ", casos[linha], " | MORTES - ", mortes[linha])
   fimpara

   mediaCasos <- totalCasos/15
   mediaMortes <- totalMortes/15
   
   escreval
   escreval("MÉDIA DE CASOS - ", mediaCasos)
   escreval("MÉDIA DE MORTES - ", mediaMortes)
   escreval
   escreval("MEDIANA DE CASOS - ", casos[7])
   escreval("MEDIANA DE MORTES - ", mortes[7])
   escreval
fimalgoritmo