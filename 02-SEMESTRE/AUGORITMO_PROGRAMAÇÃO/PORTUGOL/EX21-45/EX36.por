programa
{
	funcao inicio()
	{
		inteiro matriz[3][3]
		inteiro soma = 0

		// Entrada de dados: leitura dos 9 números inteiros
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Digite 9 números inteiros para preencher a matriz 3x3:\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		para (inteiro linha = 0; linha < 3; linha++)
		{
			para (inteiro coluna = 0; coluna < 3; coluna++)
			{
				escreva("Elemento [", linha, "][", coluna, "]: ")
				leia(matriz[linha][coluna])
				
				// Soma o valor atual
				soma = soma + matriz[linha][coluna]
			}
		}

		// Exibição da matriz organizada em linhas e colunas
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("--- Matriz 3x3 ---\n")
		para (inteiro linha = 0; linha < 3; linha++)
		{
			para (inteiro coluna = 0; coluna < 3; coluna++)
			{
				escreva(matriz[linha][coluna], "\t") // O'\t' serve para alinhar em colunas
			}
			escreva("\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Soma de todos os elementos: ", soma, "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
}


/*
Leia nove números inteiros e armazene-os em uma matriz 3 x 3. Exiba a matriz organizada em linhas e 
colunas e apresente a soma de todos os elementos. 
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 856; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */