Algoritmo "Exerc�cio10"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Fiacador
// Descri��o   : Exerc�cio 10
// Autor(a)    : Lucas Arifa
// Data atual  : 8/16/2020
funcao finalizarPrograma () : inteiro
var
inicio
   Escreval("*------------------------------------------------------*")
   Escreval("                      ",nome,"                          ")
   Escreval("*------------------------------------------------------*")
   Escreval("*                  O QUE DESEJA FAZER?                 *")
   Escreval("*------------------------------------------------------*")
   Escreval("|  0 - SAIR DO PROGRAMA E RECEBER DEVIDO               |")
   Escreval("|  1 - COMPRAR MAIS                                    |")
   Escreval("|                                                      |")
   Escreval("*------------------------------------------------------*")
   leia(opcao)
   retorne (opcao)
fimfuncao


Var
   nome : caracter
   opcao, linha, codigoProdutoEscolhido, qtd: inteiro
   total, precoUnitarioProduto : real
   codigoDoProduto: vetor [1..5] de inteiro
   precoUnitario: vetor [1..5] de real




Inicio

   codigoDoProduto[1] <-1001
   codigoDoProduto[2] <-1324
   codigoDoProduto[3] <-6548
   codigoDoProduto[4] <-0987
   codigoDoProduto[5] <-7623

   precoUnitario[1] <-  5.32
   precoUnitario[2] <-  6.45
   precoUnitario[3] <-  2.37
   precoUnitario[4] <-  5.32
   precoUnitario[5] <-  6.45



   escreval(" -------------------------")
   escreval(" |    Qual seu nome ?    |")
   escreval(" |                       |")
   escreval(" -------------------------")
   leia(nome)

   Escreval("*------------------------------------------------------*")
   Escreval("                      Ol� ",nome,"!!                    ")
   Escreval("*------------------------------------------------------*")
   Escreval("*                  DESEJA COMPRAR ALGUM PRODUTO?       *")
   Escreval("*------------------------------------------------------*")
   Escreval("|  0 - N�O                                             |")
   Escreval("|  1 - SIM                                             |")
   Escreval("|                                                      |")
   Escreval("*------------------------------------------------------*")
   leia(opcao)
   se (opcao = 0)ent�o
      Escreval("FINALIZANDO PROGRAMA!!")
   fimse
   se (opcao = 1) ent�o
      limpatela
      escreval("| C�DIGO DO PRODUTO | PRE�O UNIT�RIO |")
      para linha <- 1 ate 5 faca
         escreval(codigoDoProduto[linha],"                       ",precoUnitario[linha])
      fimpara

      escreval(" ------------------------------------")
      escreval(" |    DIGITE O C�DIGO DO PRODUTO     |")
      escreval(" |           QUE VOC� DESEJA:        |")
      escreval(" -------------------------------------")
      leia(codigoProdutoEscolhido)

      escreval(" -------------------------------------")
      escreval(" |         DIGITE A QUANTIDADE  DE   |")
      escreval(" |           UNIDADES DO PRODUTO     |")
      escreval(" |           QUE VOC� DESEJA:        |")
      escreval(" -------------------------------------")
      leia(qtd)

      para linha <- 1 ate 5 faca
         se (codigoDoProduto[linha] = codigoProdutoEscolhido) entao
            precoUnitarioProduto <- precoUnitario[linha]
            total <- qtd*precoUnitario[linha]
            Escreval("*-----------------------------------------------------------*")
            Escreval("                      Ol� ",nome,"!!                         ")
            Escreval("*-----------------------------------------------------------*")
            Escreval("                   TOTAL DEVIDO - R$",total,"                ")
            Escreval("*-----------------------------------------------------------*")
            Escreval(" C�digo do Produto escolhido - ",codigoProdutoEscolhido,"    ")
            Escreval("|                                                           |")
            Escreval("       Valor Unit�rio        -   ",precoUnitarioProduto ,"   ")
            Escreval("|                                                           |")
            Escreval("       Quantidade em unidades          -   ",qtd,"                     ")
            Escreval("*-----------------------------------------------------------*")
         fimse
      fimpara
   fimse
Fimalgoritmo