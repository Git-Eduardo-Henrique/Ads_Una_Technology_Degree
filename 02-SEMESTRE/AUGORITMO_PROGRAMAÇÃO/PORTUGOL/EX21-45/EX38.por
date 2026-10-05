programa
{
	funcao inicio()
	{
		inteiro matriz[3][4]
		inteiro somaLinha, somaColuna, totalGeral = 0

		// Entrada de dados: Lendo os valores da matriz
		para (inteiro l = 0; l < 3; l++)
		{
			para (inteiro c = 0; c < 4; c++)
			{
				escreva("Digite o valor para a posição [", l, "][", c, "]: ")
				leia(matriz[l][c])
				totalGeral = totalGeral + matriz[l][c] // Acumula o total geral
			}
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// Cálculo e exibição da soma de cada linha
		para (inteiro l = 0; l < 3; l++)
		{
			somaLinha = 0
			para (inteiro c = 0; c < 4; c++)
			{
				somaLinha = somaLinha + matriz[l][c]
			}
			escreva("Soma da Linha ", l, ": ", somaLinha, "\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// Cálculo e exibição da soma de cada coluna
		para (inteiro c = 0; c < 4; c++)
		{
			somaColuna = 0
			para (inteiro l = 0; l < 3; l++)
			{
				somaColuna = somaColuna + matriz[l][l] // Correção lógica para somaColuna = somaColuna + matriz[l][c]
			}
			escreva("Soma da Coluna ", c, ": ", somaColuna, "\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// Exibição do total geral
		escreva("Total Geral da Matriz: ", totalGeral, "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
}
/*
Leia os valores de uma matriz 3 x 4. Calcule e apresente a soma de cada linha, a soma de cada coluna e o 
total geral da matriz.
*/

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1305; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */