Algoritmo "exercício 8"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : JS Barros
// Descrição   : Exercício 8
// Autor(a)    : Lucas Arifa
// Data atual  : 8/14/2020

funcao finalizarPrograma () : inteiro
var
inicio
   Escreval("*------------------------------------------------------*")
   Escreval("                      ",nome,"                          ")
   Escreval("*------------------------------------------------------*")
   Escreval("*                  O QUE DESEJA FAZER?                 *")
   Escreval("*------------------------------------------------------*")
   Escreval("|  0 - SAIR DO PROGRAMA                                |")
   Escreval("|  1 - COMPRAR MAIS                                    |")
   Escreval("|                                                      |")
   Escreval("*------------------------------------------------------*")
   leia(opcao)
   retorne (opcao)
fimfuncao

funcao escolhaPicole () :inteiro
var
inicio
   limpatela
   Escreval("*------------------------------------------------------*")
   Escreval("      ESCOLHA O PICOLÉ QUE CABE NO SEU BOLSO:           ")
   Escreval("*------------------------------------------------------*")
   Escreval("*           1 - PICOLÉ (R$ 0.50)                       *")
   Escreval("*------------------------------------------------------*")
   Escreval("*           2 - PICOLÉ (R$ 0.60)                       *")
   Escreval("*------------------------------------------------------*")
   Escreval("*           3 - PICOLÉ (R$ 0.75)                       *")
   Escreval("*------------------------------------------------------*")
   leia(picoleEscolhido)
   retorne(picoleEscolhido)
fimfuncao

procedimento cotacaoPicole
var
inicio
   se (picoleEscolhido = 1) então
      Escreval("ESCOLHEU PICOLÉ 1")
      Escreval("ESCREVA A QUANTIDADE: ")
      leia(qtd)

      numVendasPicole1 <- qtd * (numVendasPicole1 + 1)
      totalArrecadadoPicole1 <- qtd * (totalArrecadadoPicole1 + 0.50)
   fimse
   se (picoleEscolhido = 2) então
      Escreval("ESCOLHEU PICOLÉ 2")
      Escreval("ESCREVA A QUANTIDADE: ")
      leia(qtd)

      numVendasPicole2 <- qtd * (numVendasPicole2 + 1)
      totalArrecadadoPicole2 <- qtd * (totalArrecadadoPicole2 + 0.60)
   fimse
   se (picoleEscolhido = 3) então
      Escreval("ESCOLHEU PICOLÉ 3")
      Escreval("ESCREVA A QUANTIDADE: ")
      leia(qtd)

      numVendasPicole3 <- qtd * (numVendasPicole3 + 1)
      totalArrecadadoPicole3 <- qtd * (totalArrecadadoPicole3 + 0.76)
   fimse
fimprocedimento

funcao mostrarCotacao () : caractere
var
inicio
   limpatela
   Escreval("*-----------------------------------------------------------*")
   Escreval("                     FIM DO PROGRAMA                         ")
   Escreval("*-----------------------------------------------------------*")
   Escreval("*-----------------------------------------------------------*")
   Escreval("     1º- PICOLÉ (R$ 0.50)                                    ")
   Escreval("*-----------------------------------------------------------*")
   Escreval("                ",numVendasPicole1," und. vendidas           ")
   Escreval("                R$",totalArrecadadoPicole1," total arrecadado")
   Escreval("*-----------------------------------------------------------*")
   Escreval("     2º- PICOLÉ (R$ 0.60)                       ")
   Escreval("*-----------------------------------------------------------*")
   Escreval("               ",numVendasPicole2," und. vendidas            ")
   Escreval("               R$",totalArrecadadoPicole2," total arrecadado ")
   Escreval("*-----------------------------------------------------------*")
   Escreval("     3º- PICOLÉ (R$ 0.75)                                    ")
   Escreval("*-----------------------------------------------------------*")
   Escreval("               ",numVendasPicole3," und. vendidas            ")
   Escreval("               R$",totalArrecadadoPicole3," total arrecadado ")
   Escreval("*-----------------------------------------------------------*")
fimfuncao

Var
   nome: caracter
   opcao, picoleEscolhido: inteiro
   numVendasPicole1, numVendasPicole2,numVendasPicole3,qtd : inteiro
   totalArrecadadoPicole1, totalArrecadadoPicole2, totalArrecadadoPicole3 : real



Inicio

   cronometro on
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

      Escreval(escolhaPicole)
      cotacaoPicole

      Escreval(finalizarPrograma)
      se (opcao = 0)então
         Escreval("FINALIZANDO PROGRAMA!!")
      fimse
      se (opcao = 1) então
         Escreval(escolhaPicole)
         cotacaoPicole
         Escreval(finalizarPrograma)
         se (opcao = 0)então
            Escreval("FINALIZANDO PROGRAMA!!")
         fimse
         se (opcao = 1) então
            Escreval(escolhaPicole)
            cotacaoPicole
            Escreval(finalizarPrograma)
         fimse
      fimse
   fimse
   escreval(mostrarCotacao)
Fimalgoritmo