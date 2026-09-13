programa
{
	
	funcao inicio()
	{
		inteiro num, quant, soma, media, maior, menor, valores_pos, valores_neg

		num = -1
		soma = 0
		quant = 0
		maior = 0
		menor = 0
		valores_pos = 0
		valores_neg = 0
	
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		enquanto ( verdadeiro ) {
			escreva("Digite um numero ( 0 para parar ): ")
			leia(num)

			se ( num == 0 ){
				pare
			} senao {
				quant += 1
				soma += num

				se ( num > maior ){
					maior = num
				}
				
				se ( num < menor ou menor == 0 ){
					menor = num
				}

				se ( num >= 0 ){
					valores_pos += 1
				} senao {
					valores_neg += 1
				}
			}
		}

		media = soma / quant

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Quantidade de valores digitados: ", quant, "\n")
		escreva("Soma de todos os valores: ", soma, "\n")
		escreva("Média dos valores: ", media, "\n")
		escreva("Maior valor digitado: ", maior, "\n")
		escreva("Menor valor digitado: ", menor, "\n")
		escreva("Quantidade de valores positivos: ", valores_pos, "\n")
		escreva("Quantidade de valores negativos: ", valores_neg, "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
	/*
	Leia números reais até que o usuário informe 0. Apresente quantidade, soma, média, maior, menor e 
	quantos valores foram positivos e negativos. O zero não entra nos cálculos.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 607; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */