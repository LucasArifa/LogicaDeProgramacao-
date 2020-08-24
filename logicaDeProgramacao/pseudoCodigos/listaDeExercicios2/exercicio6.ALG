Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Silvia Fiacador
// Descrição   : Exercicio 6
// Autor(a)    : Lucas Arifa
// Data atual  : 8/11/2020
Var
   nota1, nota2, nota3, nota4, notas, faltas : inteiro
   mediaNotas : real
Inicio
   escrevaL("Escreva a nota das suas 4º Avaliações")
   escrevaL("Número de faltas")
   leia(faltas)
   escrevaL("Nota 1º Avaliação")
   leia(nota1)
   escrevaL("Nota 2º Avaliação")
   leia(nota2)
   escrevaL("Nota 3º Avaliação")
   leia(nota3)
   escrevaL("Nota 4º Avaliação")
   leia(nota4)


   notas <- nota1+nota2+nota3+nota4
   mediaNotas <- notas/4

   se faltas < 10 entao
      se mediaNotas >= 7 entao
         escreval("APROVADO")
      senao entao
         se mediaNotas >=5 e <= 7 entao
            escreval("RECUPERAÇÃO")
         senao entao
            se mediaNotas <=5 entao
               escreval("APROVADO")
            fimse
         fimse
      fimse
   senao entao
      escreva("O ALUNO ESTÁ REPROVADO POR FALTA!")
   fimse

Fimalgoritmo