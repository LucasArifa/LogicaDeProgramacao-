Algoritmo "Primeira Aula - VisualG"

Var
   numero : inteiro
   operacao :caracter
   saldo,valorOperacao,deposito,retirada:real

Inicio
   //ENTRADA DE
   escreva ("Digite seu numero")
   leia (numero)
   escreval ("Digite seu saldo")
   leia (saldo)
   escreval ("Escolha Deposito ou Retirada: ")
   leia (operacao)
   escreval ("O valor do saldo atual é: ")
   escreva (" R$")
   escreva (saldo)
   escreval (" ")

   //PROCESSAMENTOS
   se (operacao = "Deposito") entao
      //se deposito
      escreval ("Digite o valor a ser depositado")
      leia (deposito)
      valorOperacao <- saldo + deposito
      //
   senao entao
      // se retirada
      se (operacao = "Retirada") entao
         escreva ("Digite valor de retirada")
         leia (retirada)
         escreval (" ")
         valorOperacao <- saldo - retirada

      senao entao
         escreval ("Escolha uma das operações")
      fimse
   fimse
   //
   se (valorOperacao <= 0) entao
      escreval ("seu saldo foi estourado")
      escreva ("R$")
      escreva (valorOperacao)
   senao entao
      escreva ("Seu saldo atual é de: ")
      escreva ("R$")
      escreva (valorOperacao)
      escreval (" ")
   fimse

Fimalgoritmo
