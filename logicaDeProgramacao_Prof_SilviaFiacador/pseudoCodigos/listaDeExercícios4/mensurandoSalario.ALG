Algoritmo "Exercício 4"
// Disciplina  :[Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Exercício 4
// Autor(a)    : Luacs Arifa
// Data atual  : 8/13/2020
var
 ht, vh, pd, sb, td, sl: real
 
Inicio

escreval("Digite as horas de trabalho por mês: ")
leia(ht)
escreval("Digite o valçor ganho por hora trabalhada: ")
leia(vh)
escreval("Digite o percentual de desconto: ")
leia(pd)

sb <- ht*vh

td <- (pd/100)*sb

sl <- sb-td

escreval("O seu Salário Bruto é ", sb)
escreval("-------------------------------------------")
escreval("O total de descontos no seu sálario é ", td)
escreval("-------------------------------------------")
escreval("O seu Salário Bruto é", sb)


Fimalgoritmo