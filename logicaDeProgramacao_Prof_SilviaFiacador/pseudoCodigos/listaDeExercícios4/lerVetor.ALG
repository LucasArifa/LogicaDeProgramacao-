Algoritmo "exerc�cio17"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Fiacador
// Descri��o   : Exercicio 17
// Autor(a)    : Lucas Arifa
// Data atual  : 8/16/2020
Var
   nome: caracter
   opcao, linha, num: inteiro
   arrayAleatorio : vetor [1..20] de inteiro
   qtdNumPar,qtdNumImpar,qtdNumMaioresQue50, qtdNumMenoresQue7 : inteiro
Inicio

   escreval(" -------------------------")
   escreval(" |    Qual seu nome ?    |")
   escreval(" |                       |")
   escreval(" -------------------------")
   leia(nome)

   Escreval("*------------------------------------------------------*")
   Escreval("                      Ol� ",nome,"!!                    ")
   Escreval("*------------------------------------------------------*")
   Escreval("*                  O QUE DESEJA FAZER?                 *")
   Escreval("*------------------------------------------------------*")
   Escreval("|  0 - SAIR DO PROGRAMA                                |")
   Escreval("|  1 - CONTINUAR O PROGRAMA                            |")
   Escreval("|                                                      |")
   Escreval("*------------------------------------------------------*")
   leia(opcao)
   se (opcao = 0)ent�o
      Escreval("FINALIZANDO PROGRAMA!!")
   fimse
   se (opcao = 1) ent�o
      para linha <- 1 ate 20 faca
         escreval(" ------------------------------------------")
         escreval(" |  Informe o ",linha,"� n�mero:          |")
         escreval(" |      De uma sequ�ncia de 20 n�meros    |")
         escreval(" ------------------------------------------")
         leia(num)
         arrayAleatorio[linha] <- num
      fimpara

      para linha <- 1 ate 20 faca
         se (arrayAleatorio[linha] MOD 2 = 0) entao
            qtdNumPar <- qtdNumPar + 1
         senao entao
            qtdNumImpar <- qtdNumImpar + 1
         fimse
         se (arrayAleatorio[linha] > 50) entao
            qtdNumMaioresQue50 <- qtdNumMaioresQue50+1
         fimse
         se (arrayAleatorio[linha]<7) entao
            qtdNumMenoresQue7 <- qtdNumMenoresQue7+1
         fimse
      fimpara

      Escreval("*------------------------------------------------------*")
      Escreval("                      ",nome,"!!                        ")
      Escreval("*------------------------------------------------------*")
      Escreval("*                  TEMOS UM RELAT�RIO                  *")
      Escreval("*------------------------------------------------------*")
      Escreval("   N�meros Pares           : ",qtdNumPar,"              ")
      Escreval("   N�meros �mpares         : ",qtdNumImpar,"            ")
      Escreval("   N�meros Maiores que sete: ",qtdNumMaioresQue50,"     ")
      Escreval("   N�meros Menores que sete: ",qtdNumMenoresQue7,"      ")
      Escreval("*------------------------------------------------------*")

   fimse
Fimalgoritmo