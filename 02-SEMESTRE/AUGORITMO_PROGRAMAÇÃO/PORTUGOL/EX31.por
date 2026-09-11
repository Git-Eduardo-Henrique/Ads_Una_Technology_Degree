programa {
  funcao inicio() {
    inteiro nums[10], cont

    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

    para (cont = 0; cont < 10; cont++){
      escreva("Digite o ", cont+1, "° numero: ")
      leia(nums[cont])
    }

    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

    para (cont = 0; cont < 10; cont++){
      escreva(cont+1, "° valor do vetor: ", nums[cont], "\n")
    }

    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

    para (cont = 9; cont >= 0; cont--){
      escreva(cont+1, "° valor do vetor: ", nums[cont], "\n")
    }

    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }
  /*
  Leia dez números inteiros e armazene-os em um vetor. 
  Apresente os valores na ordem de entrada e, depois, na 
  ordem inversa.
  */
}
