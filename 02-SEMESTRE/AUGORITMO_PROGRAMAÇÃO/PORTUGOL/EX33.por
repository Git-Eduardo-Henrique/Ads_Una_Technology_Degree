programa {
  funcao inicio() {
    inteiro cod
    real precos[8]
    cadeia nomes[8], sn
    logico sair

    sair = falso

    nomes[0] = "Danone"
    precos[0] = 5.45
    nomes[1] = "Bolacha"
    precos[1] = 6.75
    nomes[2] = "Kitkat"
    precos[2] = 5.50
    nomes[3] = "Oleo"
    precos[3] = 9.80
    nomes[4] = "Arroz 5kg"
    precos[4] = 25.75
    nomes[5] = "Iphone 29 pro max ultra slim"
    precos[5] = 29999.99
    nomes[6] = "Kitkat branco"
    precos[6] = 5.50
    nomes[7] = "Boneco Shrek"
    precos[7] = 499.99

    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

    enquanto ( sair == falso ){
      escreva("Digite o codigo do produto ( 0 a 7 ): ")
      leia(cod)

      se (cod < 0 ou cod > 7){
        escreva("Produto não cadastrado!! tente novamente\n")
      } senao {
        escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
        escreva("Nome do produto: ", nomes[cod], "\n")
        escreva("Preço do produto: R$", precos[cod], "\n")
      }

      escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

      escreva("Deseja continuar? (s/n): ")
      leia(sn)

      se (sn == "n"){
        sair = verdadeiro
      } 

      escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    }
  }


    
  /*
  Cadastre o nome e o preço de oito produtos em dois vetores 
  correspondentes. Depois, solicite o nome de um produto para 
  consulta. 
  Se ele for encontrado, apresente seu preço. Caso contrário, 
  informe que o produto não está cadastrado.
   */
}
