Algoritmo "Apresenta��o!!"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : JS Barros
// Descri��o   : Apresenta��o individual
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

   se (opcao = "0")ent�o
      Escreval("Finalizando quis")
   fimse

   se (opcao = "1") ent�o
      limpatela

      Escreval("Digite o seu nome: ")
      leia (nome)

      Escreval("--------------------------------------------------------")
      Escreval("|                         quis                         |")
      Escreval("|                  Primeira Pergunta                   |")
      Escreval("--------------------------------------------------------")
      Escreval(" ")
      Escreval("1 - O que o Instituto Proa Representa em analogia a logica de programa��o?")
      Escreval("a) Nada ")
      Escreval("b) Uma Coisa Ruim")
      Escreval("c) Sequ�ncia Linear de boas experi�ncias!")
      Escreval("")
      Escreval("Resposta:")
      leia(opcao)

      se(opcao = "c")ent�o
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
      Escreval("2 - A estrutura condicional abaixo ter� qual sa�da ?")
      Escreval("  Proa = Responsabilidade Social                 ")
      Escreval("  Se Proa = Responsabilidade Social              ")
      Escreval("     Fa�a um cora��o                             ")
      Escreval("  Senao                                          ")
      Escreval("     Pense melhor                                ")
      Escreval("                                                 ")

      Escreval("a) Fa�a um cora��o ")
      Escreval("b) Pense melhor")

      Escreval("Resposta:")
      leia(opcao)
      se(opcao = "a")ent�o
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
      Escreval("3 - O que o Instituto Proa � pra voc� ?")
      Escreval("a) Uma organiza��o sem fins lucartivos que ajuda jovens")
      Escreval("b) Uma empresa ")
      Escreval("c) Uma companhia")
      Escreval("")
      Escreval("Resposta:")
      leia(opcao)
      se(opcao = "a")ent�o
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
      Escreval("4 - Como voc� se v� no instituto proa?")
      Escreval("a) Um integrante de uma equipe, esta que agrupa todos os simpatizantes ")
      Escreval("b) Igual o Silvio Santos")
      Escreval("c) Parecido com o Bill Gates")
      Escreval("d) Um Steve Jobs da Vida")
      Escreval("")
      Escreval("Resposta:")
      leia(opcao)
      se(opcao = "a")ent�o
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
      Escreval("*                  Voc� acertou: ", acertos,"          *")
      Escreval("*                  Voc� errou: ", erros,"              *")
      Escreval("*                  Voc� fez: ", pontuacao," pontos     *")
      Escreval("********************************************************")
      Escreval("")
      Escreval("########################################################")
      Escreval("#                                                      #")
      Escreval("#                 Autor: Pablo                         #")
      Escreval("#                                                      #")
      Escreval("#                     Vers�o Aprendizado               #")
      Escreval("#                                                      #")
      Escreval("########################################################")
      cronometro off
   fimse

fimalgoritmo