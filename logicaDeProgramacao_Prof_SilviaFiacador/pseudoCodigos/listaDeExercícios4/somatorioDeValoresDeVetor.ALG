Algoritmo "exerc�cio15"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Fiacador
// Descri��o   : Exercicio 15
// Autor(a)    : Lucas Arifa
// Data atual  : 8/16/2020
Var
   nome: caracter
   opcao, linha, membroSequencia, total: inteiro

   numAleatorios : vetor [1..10] de inteiro

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

      para linha de 1 ate 10 passo 1 faca
         escreval(" ------------------------------")
         escreval(" |digite o ",linha,"� n�mero?  |")
         escreval(" |                             |")
         escreval(" -------------------------------")
         leia(membroSequencia)
         numAleatorios[linha] <- membroSequencia
         total <- total + numAleatorios[linha]
      fimpara

      escreval(" ------------------------------")
      escreval(" |SOMAT�RIO DOS VALORES �:     |")
      escreval(" |                             |")
      escreval("            ",total,"           ")
      escreval(" -------------------------------")
   fimse


Fimalgoritmo