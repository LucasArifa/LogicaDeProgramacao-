Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Fiacador
// Descri��o   : Exercicio 6
// Autor(a)    : Lucas Arifa
// Data atual  : 8/11/2020
Var
   nota1, nota2, nota3, nota4, notas, faltas : inteiro
   mediaNotas : real
Inicio
   escrevaL("Escreva a nota das suas 4� Avalia��es")
   escrevaL("N�mero de faltas")
   leia(faltas)
   escrevaL("Nota 1� Avalia��o")
   leia(nota1)
   escrevaL("Nota 2� Avalia��o")
   leia(nota2)
   escrevaL("Nota 3� Avalia��o")
   leia(nota3)
   escrevaL("Nota 4� Avalia��o")
   leia(nota4)


   notas <- nota1+nota2+nota3+nota4
   mediaNotas <- notas/4

   se faltas < 10 entao
      se mediaNotas >= 7 entao
         escreval("APROVADO")
      senao entao
         se mediaNotas >=5 e <= 7 entao
            escreval("RECUPERA��O")
         senao entao
            se mediaNotas <=5 entao
               escreval("APROVADO")
            fimse
         fimse
      fimse
   senao entao
      escreva("O ALUNO EST� REPROVADO POR FALTA!")
   fimse

Fimalgoritmo