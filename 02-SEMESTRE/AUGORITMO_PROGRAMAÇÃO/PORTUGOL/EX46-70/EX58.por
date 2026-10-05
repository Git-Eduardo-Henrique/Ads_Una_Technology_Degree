programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	funcao inicio()
	{
		inteiro vetorA[10]
		inteiro vetorB[10]
		inteiro vetorInterseccao[10] // No máximo 10 elementos em comum

		inteiro i, j, k
		inteiro totalInterseccao = 0
		logico jaAdicionado

		linha()
		escreva("   INTERSECÇÃO DE VETORES (SEM REPETIÇÕES)     \n")
		linha()

		// Leitura do Primeiro Vetor
		escreva("Preenchendo o PRIMEIRO vetor (10 números):\n")
		para (i = 0; i < 10; i++)
		{
			escreva("Vetor A [", i + 1, "]: ")
			leia(vetorA[i])
		}

		linha()

		// Leitura do Segundo Vetor
		escreva("Preenchendo o SEGUNDO vetor (10 números):\n")
		para (i = 0; i < 10; i++)
		{
			escreva("Vetor B [", i + 1, "]: ")
			leia(vetorB[i])
		}

		linha()

		// Processamento: Identificar elementos presentes nos dois vetores (sem repetição)
		para (i = 0; i < 10; i++)
		{
			// Verifica se o elemento atual do Vetor A também está no Vetor B
			para (j = 0; j < 10; j++)
			{
				se (vetorA[i] == vetorB[j])
				{
					// Se encontrou no Vetor B, verifica se já não foi inserido no Vetor Intersecção
					jaAdicionado = falso
					para (k = 0; k < totalInterseccao; k++)
					{
						se (vetorA[i] == vetorInterseccao[k])
						{
							jaAdicionado = verdadeiro
						}
					}

					// Adiciona ao terceiro vetor apenas se for novidade
					se (nao jaAdicionado)
					{
						vetorInterseccao[totalInterseccao] = vetorA[i]
						totalInterseccao = totalInterseccao + 1
					}
				}
			}
		}

		// Exibição dos resultados
		escreva("Vetor A: ")
		para (i = 0; i < 10; i++)
		{
			escreva("[", vetorA[i], "] ")
		}
		escreva("\n")

		escreva("Vetor B: ")
		para (i = 0; i < 10; i++)
		{
			escreva("[", vetorB[i], "] ")
		}
		escreva("\n")

		linha()

		escreva("Vetor Intersecção (presentes nos dois, sem repetição):\n")
		se (totalInterseccao == 0)
		{
			escreva("Nenhum elemento em comum foi encontrado.\n")
		}
		senao
		{
			para (i = 0; i < totalInterseccao; i++)
			{
				escreva("[", vetorInterseccao[i], "] ")
			}
			escreva("\n")
		}

		linha()
	}
}
/*
Leia dois vetores de dez inteiros. Gere um terceiro vetor com os valores presentes nos dois, sem 
repetições. 
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2128; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */