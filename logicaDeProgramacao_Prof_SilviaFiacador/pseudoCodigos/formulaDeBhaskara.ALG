Algoritmo "Aritimetica - Resolu��o de Equa��es (2�Grau)"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Silvia Flacador
// Descri��o   : Resolu��o de equa��es de 2�grau
// Autor(a)    : Lucas Arifa
// Data atual  : 8/7/2020
Var
// Nesse caso, as vari�veis devem pertencer aos n�meros REAIS.
a,b,c,delta,x1,x2: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

// Aqui ocorre as solicita��es ao usu�rio.
// Observa��o: "escreval" imprime na tela e passa o cursor para a pr�xima linha
escreval ("RESOLVENDO EQUA��O DO SEGUNDO GRAU. INSIRA OS COEFICIENTES DE A, B, e C, PRECEDIDOS DO SINAL")
escreval ("Ex: -1 ou -5")
escreva("Digite o valor de a: ")
leia(a)
escreva("Digite o valor de b: ")
leia(b)
escreva("Digite o valor de c: ")
leia(c)
// Se A e B forem diferente de ZERO continua, se n�o aborta a miss�o
se (a<>0) e (b<>0) entao
//Achando o DELTA
delta <- b^2 - 4*a*c
se (delta > 0) entao
x1 <- ((- + (raizQ(delta)))/(2*a)
senao
//Se delta for igual a zero, encontre a �nica raiz existente
se (delta = 0) entao
x1 <- -="" a="" b="" br="" delta="" raizq="">escreva("A raiz �: ",x1)
senao
//Se Delta for menor que zero, informa que n�o existe raiz
se (delta < 0) entao
escreva("N�o existe raiz, pois o DELTA � menor que zero")
fimse
fimse
fimse
senao
escreval ("Equa��o incompleta. Em uma equa��o de 2� grau, o A e o B n�o podem ser igual a ZERO")
fimse
//Escreval sem nada escrito, apenas para dar espa�o em branco na rela
fimalgoritmo