

programa
{
	funcao inicio()
	{
		inteiro vetor[10]
		inteiro i, j, copia, trocas = 0

		// Leitura dos dez números inteiros
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Digite 10 números inteiros:\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		para (i = 0; i < 10; i++) {
			escreva("Posição ", i + 1, ": ")
			leia(vetor[i])
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// Apresentação do vetor original
		escreva("Vetor original: [ ")
		para (i = 0; i < 10; i++) {
			escreva(vetor[i], " ")
		}
		escreva("]\n")

		// Ordenação crescente (Bubble Sort) e contagem de trocas
		para (i = 0; i < 9; i++) {
			para (j = 0; j < 9 - i; j++) {
				// Compara pares de posições adjacentes
				se (vetor[j] > vetor[j + 1]) {
					// Troca os valores de lugar
					copia = vetor[j]
					vetor[j] = vetor[j + 1]
					vetor[j + 1] = copia
					
					// Incrementa o contador de trocas
					trocas++
				}
			}
		}

		// Apresentação do vetor ordenado
		escreva("Vetor ordenado: [ ")
		para (i = 0; i < 10; i++) {
			escreva(vetor[i], " ")
		}
		escreva("]\n")

		// Apresentação da quantidade de trocas
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Quantidade de trocas realizadas: ", trocas, "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
	
  /*
  Leia dez números inteiros e apresente o vetor original. Em seguida, ordene os valores em ordem crescente
  sem utilizar funções prontas de ordenação.
  Apresente o vetor ordenado e a quantidade de trocas realizadas.
  Dica: Compare pares de posições e troque os valores quando estiverem fora de ordem
  */
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 360; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */