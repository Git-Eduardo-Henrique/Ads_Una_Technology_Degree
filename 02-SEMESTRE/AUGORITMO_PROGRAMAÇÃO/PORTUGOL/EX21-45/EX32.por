programa {
  funcao inicio() {
    inteiro temps[7], cont, soma, maior, menor, dias_mais, dia_menor, dia_maior
    real media

    maior = 0
    menor = 0
    soma = 0
    dias_mais = 0

    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

    para (cont = 0; cont < 7; cont++){
      escreva("digite a temperatura do ", cont+1, "° dia: ")
      leia(temps[cont])

      soma += temps[cont]

      se (temps[cont] > maior){
          maior = temps[cont]
          dia_maior = cont+1
      }
      se (menor == 0){
          menor = temps[cont]
          dia_menor = cont+1
      } senao se (temps[cont] < menor){
          menor = temps[cont]
          dia_menor = cont+1
      }
      
    }

    media = soma / 7

    para (cont = 0; cont < 7; cont++){
      se (temps[cont] > media){
        dias_mais += 1
      }
    }

    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("média de temperatura: ", media, "\n")
    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("maior temperatura: ", maior, "\n")
    escreva("dia de maior temperatura: dia ", dia_maior, "\n")
    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("menor temperatura: ", menor, "\n")
    escreva("dia de menor temperatura: dia ", dia_menor, "\n")
    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    escreva("dias acima de média: ", dias_mais, "\n")
    escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
  }

  /*
  Armazene em um vetor as temperaturas registradas nos sete dias de
   uma semana. Apresente: 
  - a temperatura média; 
  - a maior e a menor temperatura; 
  - os índices dos dias em que ocorreram a maior e a menor 
  temperatura; 
  - a quantidade de dias com temperatura acima da média. 
   */
}
