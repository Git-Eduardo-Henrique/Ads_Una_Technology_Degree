programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	funcao inicio()
	{
		inteiro tamanho, i, j, aux, meio
		inteiro vetor[15]
		real mediana

		linha()
		escreva("      CÁLCULO DA MEDIANA EM VETOR ORDENADO     \n")
		linha()

		// Validação: tamanho deve ser ímpar e estar entre 5 e 15
		faca
		{
			escreva("Informe a quantidade de valores (ÍMPAR entre 5 e 15): ")
			leia(tamanho)

			se (tamanho < 5 ou tamanho > 15 ou tamanho % 2 == 0)
			{
				escreva("Erro: O número deve ser ÍMPAR e estar no intervalo entre 5 e 15!\n")
			}
		} enquanto (tamanho < 5 ou tamanho > 15 ou tamanho % 2 == 0)

		linha()

		// Leitura dos elementos
		para (i = 0; i < tamanho; i++)
		{
			escreva("Digite o ", i + 1, "º valor inteiro: ")
			leia(vetor[i])
		}

		// Ordenação do vetor em ordem crescente (Bubble Sort)
		para (i = 0; i < tamanho - 1; i++)
		{
			para (j = 0; j < tamanho - 1 - i; j++)
			{
				se (vetor[j] > vetor[j + 1])
				{
					aux = vetor[j]
					vetor[j] = vetor[j + 1]
					vetor[j + 1] = aux
				}
			}
		}

		// Cálculo da mediana (em tamanho ímpar, é exatamente o elemento central)
		meio = tamanho / 2
		mediana = vetor[meio]

		linha()
		escreva("RESULTADOS:\n")
		linha()

		// Exibição do vetor ordenado
		escreva("Vetor Ordenado: ")
		para (i = 0; i < tamanho; i++)
		{
			escreva("[", vetor[i], "] ")
		}
		escreva("\n")

		linha()
		escreva("Menor valor: ", vetor[0], "\n")
		escreva("Maior valor: ", vetor[tamanho - 1], "\n")
		escreva("Mediana (posição central [", meio + 1, "]): ", mediana, "\n")
		linha()
	}
}
/*
Leia uma quantidade ímpar de valores entre 5 e 15, ordene-os e apresente a mediana, além do menor e do 
maior valor.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1107; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */