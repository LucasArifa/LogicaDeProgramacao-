Algoritmo "Aritimetica - Resolução de Equações (2ºGrau)"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Silvia Flacador
// Descrição   : Resolução de equações de 2ºgrau
// Autor(a)    : Lucas Arifa
// Data atual  : 8/7/2020
Var
// Nesse caso, as variáveis devem pertencer aos números REAIS.
a,b,c,delta,x1,x2: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Aqui ocorre as solicitações ao usuário.
// Observação: "escreval" imprime na tela e passa o cursor para a próxima linha
escreval ("RESOLVENDO EQUAÇÃO DO SEGUNDO GRAU. INSIRA OS COEFICIENTES DE A, B, e C, PRECEDIDOS DO SINAL")
escreval ("Ex: -1 ou -5")
escreva("Digite o valor de a: ")
leia(a)
escreva("Digite o valor de b: ")
leia(b)
escreva("Digite o valor de c: ")
leia(c)
// Se A e B forem diferente de ZERO continua, se não aborta a missão
se (a<>0) e (b<>0) entao
//Achando o DELTA
delta <- b^2 - 4*a*c
se (delta > 0) entao
x1 <- ((- + (raizQ(delta)))/(2*a)
senao
//Se delta for igual a zero, encontre a única raiz existente
se (delta = 0) entao
x1 <- -="" a="" b="" br="" delta="" raizq="">escreva("A raiz é: ",x1)
senao
//Se Delta for menor que zero, informa que não existe raiz
se (delta < 0) entao
escreva("Não existe raiz, pois o DELTA é menor que zero")
fimse
fimse
fimse
senao
escreval ("Equação incompleta. Em uma equação de 2º grau, o A e o B não podem ser igual a ZERO")
fimse
//Escreval sem nada escrito, apenas para dar espaço em branco na rela
fimalgoritmo