Algoritmo "exerc�cio16"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Fiacador
// Descri��o   : Exercicio 16
// Autor(a)    : Lucas Arifa
// Data atual  : 8/16/2020
Var
   nome: caracter
   opcao, linha, num: inteiro
   vetorAleatorio : vetor [1..15] de inteiro

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
      para linha <- 1 ate 15 faca
         Escreval("*------------------------------------------------------*")
         Escreval("| Escolha o ",linha,"� n�mero positivo ou negativo:    |")
         Escreval("|           Teremos uma sequencia de 15                |")
         Escreval("*------------------------------------------------------*")
         leia(num)
         vetorAleatorio[linha] <- num
      fimpara

      para linha <- 1 ate 15 faca
         se (vetorAleatorio[linha] > 0) entao
            Escreval("               ",vetorAleatorio[linha],"              ")
         fimse
      fimpara
      Escreval("*------------------------------------------------------*")
      Escreval("|              Numeros POSITIVOS                       |")
      Escreval("*------------------------------------------------------*")
   fimse
Fimalgoritmo