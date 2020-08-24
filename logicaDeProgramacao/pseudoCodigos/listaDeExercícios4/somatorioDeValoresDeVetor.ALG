Algoritmo "exercício15"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Silvia Fiacador
// Descrição   : Exercicio 15
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
   Escreval("                      Olá ",nome,"!!                    ")
   Escreval("*------------------------------------------------------*")
   Escreval("*                  O QUE DESEJA FAZER?                 *")
   Escreval("*------------------------------------------------------*")
   Escreval("|  0 - SAIR DO PROGRAMA                                |")
   Escreval("|  1 - CONTINUAR O PROGRAMA                            |")
   Escreval("|                                                      |")
   Escreval("*------------------------------------------------------*")
   leia(opcao)
   se (opcao = 0)então
      Escreval("FINALIZANDO PROGRAMA!!")
   fimse
   se (opcao = 1) então

      para linha de 1 ate 10 passo 1 faca
         escreval(" ------------------------------")
         escreval(" |digite o ",linha,"º número?  |")
         escreval(" |                             |")
         escreval(" -------------------------------")
         leia(membroSequencia)
         numAleatorios[linha] <- membroSequencia
         total <- total + numAleatorios[linha]
      fimpara

      escreval(" ------------------------------")
      escreval(" |SOMATÓRIO DOS VALORES É:     |")
      escreval(" |                             |")
      escreval("            ",total,"           ")
      escreval(" -------------------------------")
   fimse


Fimalgoritmo