Algoritmo "Exerc�cio11"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Fiacador
// Descri��o   : Exerc�cio 11
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
      Escreval("*------------------------------------------------------*")
      Escreval("                     ",nome,"!!                         ")
      Escreval("*------------------------------------------------------*")
      Escreval("             DIGITE UM N�MERO DE TESTE:                 ")
      Escreval("*------------------------------------------------------*")
      leia(num)

      se (num) MOD >= 1 ent�o
         Escreval("*------------------------------------------------------*")
         Escreval("                     ",nome,"!!                         ")
         Escreval("*------------------------------------------------------*")
         Escreval("*                  TEMOS UM RELAT�RIO                  *")
         Escreval("*------------------------------------------------------*")
         Escreval("|                                                      |")
         Escreval("|           Este n�mero n�o � m�ltiplo de 7            |")
         Escreval("|                                                      |")
         Escreval("*------------------------------------------------------*")

      senao
         se (num > 0 e num < 1000) ent�o
            Escreval("*------------------------------------------------------*")
            Escreval("                     ",nome,"!!                         ")
            Escreval("*------------------------------------------------------*")
            Escreval("*                  TEMOS UM RELAT�RIO                  *")
            Escreval("*------------------------------------------------------*")
            Escreval("|                                                      |")
            Escreval("|         Este n�mero � m�ltiplo de 7 inferior a 1000  |")
            Escreval("|                                                      |")
            Escreval("*------------------------------------------------------*")
         fimse
      fimse


   fimse

Fimalgoritmo