Algoritmo "exerc�cio14"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Fiacador
// Descri��o   : Exercicio 14
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
      escreval(" -------------------------------")
      escreval(" |    FINALIZAMOS O PROGRAMA    |")
      escreval(" |                              |")
      escreval(" -------------------------------"
   fimse
   se (opcao = 1) ent�o

      para linha de 1 ate 10 passo 1 faca
         Escreval("*------------------------------------------------------*")
         Escreval("                     ",nome,"!!                         ")
         Escreval("*------------------------------------------------------*")
         Escreval("        ESCREVA UMA SEQUENCIA DE 10 N�MEROS             ")
         Escreval("*------------------------------------------------------*")
         Escreval("  DIGITE O ",linha,"� N�MERO DA SEQU�NCIA               ")
         Escreval("*------------------------------------------------------*")
         leia(membroSequencia)
         ordemRespectivaDosNumeros[linha] <- membroSequencia
      fimpara
      para linha de 10 ate 1 passo -1 faca
         Escreval(ordemRespectivaDosNumeros[linha])

      fimpara
      Escreval("             - ESTA � A RESPECTIVA ORDEM -               ")

   fimse
Fimalgoritmo