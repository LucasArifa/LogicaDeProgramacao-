Algoritmo "exercício14"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Silvia Fiacador
// Descrição   : Exercicio 14
// Autor(a)    : Lucas Arifa
// Data atual  : 8/16/2020

Var
   nome: caractere
   opcao, linha, membroSequencia: inteiro
   ordemRespectivaDosNumeros: vetor [1..10] de real

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
      escreval(" -------------------------------")
      escreval(" |    FINALIZAMOS O PROGRAMA    |")
      escreval(" |                              |")
      escreval(" -------------------------------"
   fimse
   se (opcao = 1) então

      para linha de 1 ate 10 passo 1 faca
         Escreval("*------------------------------------------------------*")
         Escreval("                     ",nome,"!!                         ")
         Escreval("*------------------------------------------------------*")
         Escreval("        ESCREVA UMA SEQUENCIA DE 10 NÚMEROS             ")
         Escreval("*------------------------------------------------------*")
         Escreval("  DIGITE O ",linha,"º NÚMERO DA SEQUÊNCIA               ")
         Escreval("*------------------------------------------------------*")
         leia(membroSequencia)
         ordemRespectivaDosNumeros[linha] <- membroSequencia
      fimpara
      para linha de 10 ate 1 passo -1 faca
         Escreval(ordemRespectivaDosNumeros[linha])

      fimpara
      Escreval("             - ESTA É A RESPECTIVA ORDEM -               ")

   fimse
Fimalgoritmo