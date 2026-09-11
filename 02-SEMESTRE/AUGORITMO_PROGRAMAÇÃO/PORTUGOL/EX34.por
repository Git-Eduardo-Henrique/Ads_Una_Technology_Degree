programa {
  funcao inicio() {
    inteiro nums[15], cont, cont2, aparece[10], digitado

    para (cont2 = 0; cont2 < 10; cont2++){
      aparece[cont2] = 0
    }

    para (cont = 0; cont < 15; cont++){
      escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

      digitado = -1

      enquanto (digitado < 0 ou digitado > 9){
        escreva("Digite o ", cont+1, "° numero ( 0 a 9 ): ")
        leia(digitado)

        se (digitado < 0 ou digitado > 9){
          escreva("valor incorreto!! digite novamente\n")
        } senao {
          nums[cont] = digitado

          aparece[digitado] += 1
        }
      }
    }
    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

    para (cont2 = 0; cont2 < 10; cont2++){
      escreva("Quantas vezes apareceu o numero ", cont2, ": ", aparece[cont2], "\n")
    }

    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }
  /*
  Leia quinze números inteiros entre 0 e 9 e armazene-os em um 
  vetor. Use um segundo vetor de dez posições 
  para contar quantas vezes cada valor aparece. 
  Ao final, apresente a frequência dos valores de 0 a 9, 
  inclusive daqueles que não apareceram.
   */
}
