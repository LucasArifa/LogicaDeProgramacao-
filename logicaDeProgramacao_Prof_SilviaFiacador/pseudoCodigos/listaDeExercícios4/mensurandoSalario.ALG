Algoritmo "Exerc�cio 4"
// Disciplina  :[Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Exerc�cio 4
// Autor(a)    : Luacs Arifa
// Data atual  : 8/13/2020
var
 ht, vh, pd, sb, td, sl: real
 
Inicio

escreval("Digite as horas de trabalho por m�s: ")
leia(ht)
escreval("Digite o val�or ganho por hora trabalhada: ")
leia(vh)
escreval("Digite o percentual de desconto: ")
leia(pd)

sb <- ht*vh

td <- (pd/100)*sb

sl <- sb-td

escreval("O seu Sal�rio Bruto � ", sb)
escreval("-------------------------------------------")
escreval("O total de descontos no seu s�lario � ", td)
escreval("-------------------------------------------")
escreval("O seu Sal�rio Bruto �", sb)


Fimalgoritmo