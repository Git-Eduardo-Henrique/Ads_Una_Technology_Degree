programa
{
	inclua biblioteca Texto
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	funcao inicio()
	{
		caracter matriz[8][8]
		cadeia palavra
		inteiro tamPalavra, i, j, k
		logico encontrou, bateu

		linha()
		escreva("     CAÇA-PALAVRAS EM MATRIZ DE CARACTERES     \n")
		linha()

		// Leitura da matriz 8x8 de caracteres
		escreva("PREENCHIMENTO DA MATRIZ (8x8):\n")
		para (i = 0; i < 8; i++)
		{
			para (j = 0; j < 8; j++)
			{
				escreva("Caractere [", i + 1, "][", j + 1, "]: ")
				leia(matriz[i][j])
			}
		}

		linha()

		// Exibição da Matriz Preenchida
		escreva("MATRIZ PREENCHIDA:\n")
		para (i = 0; i < 8; i++)
		{
			para (j = 0; j < 8; j++)
			{
				escreva("[ ", matriz[i][j], " ] ")
			}
			escreva("\n")
		}

		linha()

		// Leitura da palavra buscada
		escreva("Digite a palavra a ser buscada na matriz: ")
		leia(palavra)

		tamPalavra = Texto.numero_caracteres(palavra)
		encontrou = falso

		linha()

		// 1. BUSCA HORIZONTAL (Esquerda para Direita)
		para (i = 0; i < 8; i++)
		{
			para (j = 0; j <= 8 - tamPalavra; j++)
			{
				bateu = verdadeiro
				para (k = 0; k < tamPalavra; k++)
				{
					se (matriz[i][j + k] != Texto.obter_caracter(palavra, k))
					{
						bateu = falso
					}
				}

				se (bateu)
				{
					escreva("Palavra encontrada na HORIZONTAL!\n")
					escreva("Posição inicial -> Linha: ", i + 1, ", Coluna: ", j + 1, "\n")
					encontrou = verdadeiro
				}
			}
		}

		// 2. BUSCA VERTICAL (Cima para Baixo)
		para (j = 0; j < 8; j++)
		{
			para (i = 0; i <= 8 - tamPalavra; i++)
			{
				bateu = verdadeiro
				para (k = 0; k < tamPalavra; k++)
				{
					se (matriz[i + k][j] != Texto.obter_caracter(palavra, k))
					{
						bateu = falso
					}
				}

				se (bateu)
				{
					escreva("Palavra encontrada na VERTICAL!\n")
					escreva("Posição inicial -> Linha: ", i + 1, ", Coluna: ", j + 1, "\n")
					encontrou = verdadeiro
				}
			}
		}

		se (nao encontrou)
		{
			escreva("A palavra '", palavra, "' NÃO foi encontrada na matriz.\n")
		}

		linha()
	}
}
/*
Preencha uma matriz de caracteres 8 x 8 e solicite uma palavra. Informe se ela aparece na horizontal ou 
vertical e a posição inicial.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1795; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */