Algoritmo "Exercicio4"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor    : Silvia Fiacador
// Descri��o    : Exerc�cio
// Autor(a)     : Lucas Arifa
// Data atual   : 8/11/2020
Var
   meta, vendas : inteiro
Inicio
   escreval("Quantas vezes voc� fez no m�s?")
   leia(vendas)
   meta <-80
   se vendas >= meta entao
      escreval("Voc� Ganhou o Pr�mio!!")
      escreval("Conseguiu bater a meta de vendas")
   senao entao
      escreval("Voc� n�o ganhou o pr�mio")
      escreval("Tente bater a meta no m�s que vem, boa sorte!!")
   fimse
Fimalgoritmo