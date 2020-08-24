Algoritmo "Desafio - Covid-19"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Silvia Fiacador
// Descrição   : Desafio: Covid-19
// Autor(a)    : Lucas Arifa
// Data atual  : 8/11/2020
var

   paises: vetor [0..5] de caractere
   casos : vetor [0..5] de real
   mortes : vetor [0..5] de real
   escolhaPais, pais,case, morte: caracter
   linha, posicao, contadorPais : inteiro

inicio

   para linha <-0 ate 4 faca

      contadorPais <- contadorPais + 1
      
      escreval("insira o nome do PAÍS", contadorPais, "º :")
      leia(paises[linha])
      escreval("insira o nome do TOTAL DE CASOS: ")
      leia(casos[linha])
      escreval("insira o nome TOTAL DE MORTES: ")
      leia(mortes[linha])
      
   fimpara


   para linha <-0 ate 4 faca
      escreval(paises[linha]," | CASOS - ", casos[linha], " | MORTES - ", mortes[linha])
   fimpara

   escreval("----------------------------------------")
   escreval("|        ESCOLHA UM PÁIS :             |")
   escreval("----------------------------------------")
   leia(escolhaPais)
   
   posicao <- 0

   enquanto (posicao <= 4) e (paises[posicao] <> escolhaPais) faca
      posicao <- posicao + 1
   fimenquanto
   se paises[posicao] = escolhaPais entao
      escreval("----------------------------------------")
      escreval("         ",escolhaPais,"               ")
      escreval("----------------------------------------")
      escreval("         CASOS  : ",casos[posicao],"      ")
      escreval("         MORTES : ",mortes[posicao],"     ")
      escreval("----------------------------------------")

   senao

      escreval("----------------------------------------")
      escreval("|      NENHUM PAÍS CORRESPONDENTE      |")
      escreval("----------------------------------------")

   fimse

fimalgoritmo
