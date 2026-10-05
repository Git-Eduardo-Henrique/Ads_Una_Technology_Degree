programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	funcao inicio()
	{
		inteiro vetorOriginal[10]
		inteiro vetorRotacionado[10]
		inteiro k, i, novaPosicao

		linha()
		escreva("      ROTAÇÃO CIRCULAR DE VETOR À DIREITA       \n")
		linha()

		// Leitura dos 10 elementos
		para (i = 0; i < 10; i++)
		{
			escreva("Digite o ", i + 1, "º valor inteiro: ")
			leia(vetorOriginal[i])
		}

		linha()

		// Leitura do deslocamento K (garantindo que seja positivo)
		faca
		{
			escreva("Digite o valor do deslocamento K (K >= 0): ")
			leia(k)

			se (k < 0)
			{
				escreva("Erro: O deslocamento deve ser um valor não negativo!\n")
			}
		} enquanto (k < 0)

		// Cálculo do deslocamento efetivo (evita rotações desnecessárias quando K >= 10)
		k = k % 10

		// Processamento da rotação para a direita
		para (i = 0; i < 10; i++)
		{
			// Fórmula para rotação circular à direita: (índice + K) mod 10
			novaPosicao = (i + k) % 10
			vetorRotacionado[novaPosicao] = vetorOriginal[i]
		}

		linha()
		escreva("RESULTADOS:\n")
		linha()

		// Exibição do Vetor Original
		escreva("Vetor Original:    ")
		para (i = 0; i < 10; i++)
		{
			escreva("[", vetorOriginal[i], "] ")
		}
		escreva("\n")

		// Exibição do Vetor Resultante
		escreva("Vetor Rotacionado: ")
		para (i = 0; i < 10; i++)
		{
			escreva("[", vetorRotacionado[i], "] ")
		}
		escreva("\n")

		linha()
	}
}
/*
Leia dez valores e um deslocamento K. Rotacione o vetor K posições para a direita e apresente o vetor 
original e o resultante.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */