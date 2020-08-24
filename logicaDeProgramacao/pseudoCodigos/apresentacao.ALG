Algoritmo "Apresentação!!"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : JS Barros
// Descrição   : Apresentação individual
// Autor(a)    : Lucas Arifa
// Data atual  : 8/14/2020

var
   erros, acertos, pontuacao: inteiro
   opcao: caractere
   nome: caractere
   vetnome: vetor[1..20] de caractere
   vetpontos: vetor[1..20] de inteiro
inicio

   cronometro on
   Escreval("*------------------------------------------------------*")
   Escreval("|                    Quiz - como me vejo no Proa       |")
   Escreval("*------------------------------------------------------*")
   Escreval("|  0 - SAIR DO quis                                    |")
   Escreval("|  1 - INICIAR quis                                    |")
   Escreval("|                                                      |")
   Escreval("*------------------------------------------------------*")
   Escreval("O QUE DESEJA FAZER ? ")
   leia(opcao)

   se (opcao = "0")então
      Escreval("Finalizando quis")
   fimse

   se (opcao = "1") então
      limpatela

      Escreval("Digite o seu nome: ")
      leia (nome)

      Escreval("--------------------------------------------------------")
      Escreval("|                         quis                         |")
      Escreval("|                  Primeira Pergunta                   |")
      Escreval("--------------------------------------------------------")
      Escreval(" ")
      Escreval("1 - O que o Instituto Proa Representa em analogia a logica de programação?")
      Escreval("a) Nada ")
      Escreval("b) Uma Coisa Ruim")
      Escreval("c) Sequência Linear de boas experiências!")
      Escreval("")
      Escreval("Resposta:")
      leia(opcao)

      se(opcao = "c")então
         acertos <- acertos + 1
         pontuacao <- pontuacao +100
      senao
         erros <- erros + 1
         pontuacao <- pontuacao +0
      fimse

      limpatela
      Escreval("--------------------------------------------------------")
      Escreval("|                         quis                         |")
      Escreval("|                   Segunda Pergunta                   |")
      Escreval("--------------------------------------------------------")
      Escreval(" ")
      Escreval("2 - A estrutura condicional abaixo terá qual saída ?")
      Escreval("  Proa = Responsabilidade Social                 ")
      Escreval("  Se Proa = Responsabilidade Social              ")
      Escreval("     Faça um coração                             ")
      Escreval("  Senao                                          ")
      Escreval("     Pense melhor                                ")
      Escreval("                                                 ")

      Escreval("a) Faça um coração ")
      Escreval("b) Pense melhor")

      Escreval("Resposta:")
      leia(opcao)
      se(opcao = "a")então
         acertos <- acertos + 1
         pontuacao <- pontuacao +100
      senao
         erros <- erros + 1
         pontuacao <- pontuacao +0
      fimse


      limpatela
      Escreval("--------------------------------------------------------")
      Escreval("|                        quis                          |")
      Escreval("|                  Terceira Pergunta                   |")
      Escreval("--------------------------------------------------------")
      Escreval(" ")
      Escreval("3 - O que o Instituto Proa é pra você ?")
      Escreval("a) Uma organização sem fins lucartivos que ajuda jovens")
      Escreval("b) Uma empresa ")
      Escreval("c) Uma companhia")
      Escreval("")
      Escreval("Resposta:")
      leia(opcao)
      se(opcao = "a")então
         acertos <- acertos + 1
         pontuacao <- pontuacao +100
      senao
         erros <- erros + 1
         pontuacao <- pontuacao +0
      fimse

      limpatela

      Escreval("--------------------------------------------------------")
      Escreval("|                         quis                         |")
      Escreval("|                    Quarta Pergunta                   |")
      Escreval("--------------------------------------------------------")
      Escreval(" ")
      Escreval("4 - Como você se vê no instituto proa?")
      Escreval("a) Um integrante de uma equipe, esta que agrupa todos os simpatizantes ")
      Escreval("b) Igual o Silvio Santos")
      Escreval("c) Parecido com o Bill Gates")
      Escreval("d) Um Steve Jobs da Vida")
      Escreval("")
      Escreval("Resposta:")
      leia(opcao)
      se(opcao = "a")então
         acertos <- acertos + 1
         pontuacao <- pontuacao +100
      senao
         erros <- erros + 1
         pontuacao <- pontuacao +0
      fimse

      limpatela

      Escreval("--------------------------------------------------------")
      Escreval("|                          quis                        |")
      Escreval("|                 Obrigado por particpar!!             |")
      Escreval("--------------------------------------------------------")

      Escreval("")
      Escreval("********************************************************")
      Escreval("*                  Parabens: ", nome,"                 *")
      Escreval("*                  Você acertou: ", acertos,"          *")
      Escreval("*                  Você errou: ", erros,"              *")
      Escreval("*                  Você fez: ", pontuacao," pontos     *")
      Escreval("********************************************************")
      Escreval("")
      Escreval("########################################################")
      Escreval("#                                                      #")
      Escreval("#                 Autor: Pablo                         #")
      Escreval("#                                                      #")
      Escreval("#                     Versão Aprendizado               #")
      Escreval("#                                                      #")
      Escreval("########################################################")
      cronometro off
   fimse

fimalgoritmo