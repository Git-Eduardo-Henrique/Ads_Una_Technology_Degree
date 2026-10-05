programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	funcao inicio()
	{
		// Vetor original para guardar os 15 números
		inteiro vetorOriginal[15]
		// Vetor para guardar apenas os valores distintos
		inteiro vetorDistintos[15]

		inteiro i, j
		inteiro totalDistintos = 0
		logico jaExiste

		linha()
		escreva("     REMOVEDOR DE DUPLICADAS EM VETOR          \n")
		linha()

		// Leitura dos 15 números inteiros
		para (i = 0; i < 15; i++)
		{
			escreva("Digite o ", i + 1, "º número inteiro: ")
			leia(vetorOriginal[i])
		}

		linha()

		// Processamento: filtrando os valores distintos
		para (i = 0; i < 15; i++)
		{
			jaExiste = falso

			// Verifica se o elemento atual já foi adicionado ao vetor de distintos
			para (j = 0; j < totalDistintos; j++)
			{
				se (vetorOriginal[i] == vetorDistintos[j])
				{
					jaExiste = verdadeiro
				}
			}

			// Se não for duplicado, insere no novo vetor
			se (nao jaExiste)
			{
				vetorDistintos[totalDistintos] = vetorOriginal[i]
				totalDistintos = totalDistintos + 1
			}
		}

		// Exibição dos resultados
		escreva("Vetor original (15 elementos):\n")
		para (i = 0; i < 15; i++)
		{
			escreva("[", vetorOriginal[i], "] ")
		}
		escreva("\n")

		linha()

		escreva("Vetor com valores distintos (", totalDistintos, " elementos):\n")
		para (i = 0; i < totalDistintos; i++)
		{
			escreva("[", vetorDistintos[i], "] ")
		}
		escreva("\n")

		linha()
	}
}
/*
Leia quinze inteiros. Construa um segundo vetor apenas com valores distintos, preservando a ordem da 
primeira ocorrência.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1128; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */