programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	funcao inicio()
	{
		// Declaração das matrizes
		real A[2][3]
		real B[3][2]
		real C[2][2]

		inteiro i, j, k

		linha()
		escreva("      MULTIPLICAÇÃO DE MATRIZES (A x B = C)    \n")
		linha()

		// Leitura da Matriz A (2x3)
		escreva("PREENCHIMENTO DA MATRIZ A (2 linhas x 3 colunas):\n")
		para (i = 0; i < 2; i++)
		{
			para (j = 0; j < 3; j++)
			{
				escreva("A[", i + 1, "][", j + 1, "]: ")
				leia(A[i][j])
			}
		}

		linha()

		// Leitura da Matriz B (3x2)
		escreva("PREENCHIMENTO DA MATRIZ B (3 linhas x 2 colunas):\n")
		para (i = 0; i < 3; i++)
		{
			para (j = 0; j < 2; j++)
			{
				escreva("B[", i + 1, "][", j + 1, "]: ")
				leia(B[i][j])
			}
		}

		linha()

		// Cálculo da Matriz Produto C (2x2)
		// C[i][j] = soma(A[i][k] * B[k][j]) para k de 0 a 2
		para (i = 0; i < 2; i++)
		{
			para (j = 0; j < 2; j++)
			{
				C[i][j] = 0.0
				para (k = 0; k < 3; k++)
				{
					C[i][j] = C[i][j] + (A[i][k] * B[k][j])
				}
			}
		}

		// Exibição dos Resultados
		escreva("MATRIZ A (2x3):\n")
		para (i = 0; i < 2; i++)
		{
			para (j = 0; j < 3; j++)
			{
				escreva("[ ", A[i][j], " ] ")
			}
			escreva("\n")
		}

		linha()

		escreva("MATRIZ B (3x2):\n")
		para (i = 0; i < 3; i++)
		{
			para (j = 0; j < 2; j++)
			{
				escreva("[ ", B[i][j], " ] ")
			}
			escreva("\n")
		}

		linha()

		escreva("MATRIZ RESULTANTE C (2x2 = A x B):\n")
		para (i = 0; i < 2; i++)
		{
			para (j = 0; j < 2; j++)
			{
				escreva("[ ", C[i][j], " ] ")
			}
			escreva("\n")
		}

		linha()
	}
}
/*
Leia uma matriz A de 2 x 3 e uma matriz B de 3 x 2. Calcule a matriz produto C de 2 x 2 e apresente todas as 
matrizes.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1437; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */