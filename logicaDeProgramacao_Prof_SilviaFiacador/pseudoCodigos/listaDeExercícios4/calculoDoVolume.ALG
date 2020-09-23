Algoritmo "Exercício 6"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    :  Silvia Fiacador
// Descrição    :  Exercício 6
// Autor(a)     :  Lucas Arifa
// Data atual   :  8/13/2020
Var
RAIO,RAIOAOQUADRADO, ALTURA, VOLUME : REAL


Inicio


ESCREVAL("Valor do RAIO: ")
leia(RAIO)
ESCREVAL("Valor da ALTURA: ")
leia(ALTURA)

RAIOAOQUADRADO <- RAIO*RAIO

VOLUME <- (PI * RAIOAOQUADRADO) * ALTURA

ESCREVAL(VOLUME)

Fimalgoritmo