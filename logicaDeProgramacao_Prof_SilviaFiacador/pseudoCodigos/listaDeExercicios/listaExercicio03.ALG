Algoritmo "Primeira Aula - VisualG"

Var
 x1, x2 : real
 m1, m2 : caractere
Inicio
escreva ("nome da primeira pessoa:")
  leia (m1)
escreva ("altura da primeira pessoa:")
  leia (x1)
escreva ("nome da segunda pessoa:")
  leia (m2)
escreva ("altura da segunda pessoa:")
  leia (x2)
se ( x1 >= x2) entao
  se (x1 > x2) entao
    escreva (m1)
    escreva (" mais alto que ")
    escreva (m2)
   senao
    escreva (m1)
    escreva (" mesma altura que ")
    escreva (m2)
fimse
senao entao
  escreva (m2)
  escreva (" mais alto que ")
  escreva (m1)
fimse
Fimalgoritmo
