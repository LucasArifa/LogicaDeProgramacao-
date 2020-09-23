Algoritmo "Exercicio4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    : Silvia Fiacador
// Descrição    : Exercício
// Autor(a)     : Lucas Arifa
// Data atual   : 8/11/2020
Var
   meta, vendas : inteiro
Inicio
   escreval("Quantas vezes você fez no mês?")
   leia(vendas)
   meta <-80
   se vendas >= meta entao
      escreval("Você Ganhou o Prêmio!!")
      escreval("Conseguiu bater a meta de vendas")
   senao entao
      escreval("Você não ganhou o prêmio")
      escreval("Tente bater a meta no mês que vem, boa sorte!!")
   fimse
Fimalgoritmo