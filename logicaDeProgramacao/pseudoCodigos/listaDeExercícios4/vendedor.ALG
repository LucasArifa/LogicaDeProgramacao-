Algoritmo "Exercício10"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Silvia Fiacador
// Descrição   : Exercício 10
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
   Escreval("                      Olá ",nome,"!!                    ")
   Escreval("*------------------------------------------------------*")
   Escreval("*                  DESEJA COMPRAR ALGUM PRODUTO?       *")
   Escreval("*------------------------------------------------------*")
   Escreval("|  0 - NÃO                                             |")
   Escreval("|  1 - SIM                                             |")
   Escreval("|                                                      |")
   Escreval("*------------------------------------------------------*")
   leia(opcao)
   se (opcao = 0)então
      Escreval("FINALIZANDO PROGRAMA!!")
   fimse
   se (opcao = 1) então
      limpatela
      escreval("| CÓDIGO DO PRODUTO | PREÇO UNITÁRIO |")
      para linha <- 1 ate 5 faca
         escreval(codigoDoProduto[linha],"                       ",precoUnitario[linha])
      fimpara

      escreval(" ------------------------------------")
      escreval(" |    DIGITE O CÓDIGO DO PRODUTO     |")
      escreval(" |           QUE VOCÊ DESEJA:        |")
      escreval(" -------------------------------------")
      leia(codigoProdutoEscolhido)

      escreval(" -------------------------------------")
      escreval(" |         DIGITE A QUANTIDADE  DE   |")
      escreval(" |           UNIDADES DO PRODUTO     |")
      escreval(" |           QUE VOCÊ DESEJA:        |")
      escreval(" -------------------------------------")
      leia(qtd)

      para linha <- 1 ate 5 faca
         se (codigoDoProduto[linha] = codigoProdutoEscolhido) entao
            precoUnitarioProduto <- precoUnitario[linha]
            total <- qtd*precoUnitario[linha]
            Escreval("*-----------------------------------------------------------*")
            Escreval("                      Olá ",nome,"!!                         ")
            Escreval("*-----------------------------------------------------------*")
            Escreval("                   TOTAL DEVIDO - R$",total,"                ")
            Escreval("*-----------------------------------------------------------*")
            Escreval(" Código do Produto escolhido - ",codigoProdutoEscolhido,"    ")
            Escreval("|                                                           |")
            Escreval("       Valor Unitário        -   ",precoUnitarioProduto ,"   ")
            Escreval("|                                                           |")
            Escreval("       Quantidade em unidades          -   ",qtd,"                     ")
            Escreval("*-----------------------------------------------------------*")
         fimse
      fimpara
   fimse
Fimalgoritmo