Algoritmo "Exercício11"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Silvia Fiacador
// Descrição   : Exercício 11
// Autor(a)    : Lucas Arifa
// Data atual  : 8/16/2020
Var
   nome: caractere
   opcao, num: inteiro
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
      Escreval("*------------------------------------------------------*")
      Escreval("                     ",nome,"!!                         ")
      Escreval("*------------------------------------------------------*")
      Escreval("             DIGITE UM NÚMERO DE TESTE:                 ")
      Escreval("*------------------------------------------------------*")
      leia(num)

      se (num) MOD >= 1 então
         Escreval("*------------------------------------------------------*")
         Escreval("                     ",nome,"!!                         ")
         Escreval("*------------------------------------------------------*")
         Escreval("*                  TEMOS UM RELATÓRIO                  *")
         Escreval("*------------------------------------------------------*")
         Escreval("|                                                      |")
         Escreval("|           Este número não é múltiplo de 7            |")
         Escreval("|                                                      |")
         Escreval("*------------------------------------------------------*")

      senao
         se (num > 0 e num < 1000) então
            Escreval("*------------------------------------------------------*")
            Escreval("                     ",nome,"!!                         ")
            Escreval("*------------------------------------------------------*")
            Escreval("*                  TEMOS UM RELATÓRIO                  *")
            Escreval("*------------------------------------------------------*")
            Escreval("|                                                      |")
            Escreval("|         Este número é múltiplo de 7 inferior a 1000  |")
            Escreval("|                                                      |")
            Escreval("*------------------------------------------------------*")
         fimse
      fimse


   fimse

Fimalgoritmo