programa
{
	funcao inicio()
	{
		inteiro A[2][3]
		inteiro B[3][2]
		inteiro linha, coluna

		// Entrada de dados para a Matriz A
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Preenchimento da Matriz A (2x3):\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		para (linha = 0; linha < 2; linha++)
		{
			para (coluna = 0; coluna < 3; coluna++)
			{
				escreva("Digite o valor para A[", linha, "][", coluna, "]: ")
				leia(A[linha][coluna])
			}
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// Processamento: Construção da Matriz Transposta B
		para (linha = 0; linha < 2; linha++)
		{
			para (coluna = 0; coluna < 3; coluna++)
			{
				B[coluna][linha] = A[linha][coluna]
			}
		}

		// Exibição da Matriz A
		escreva("MATRIZ A (2x3):\n")
		para (linha = 0; linha < 2; linha++)
		{
			para (coluna = 0; coluna < 3; coluna++)
			{
				escreva(A[linha][coluna], "\t")
			}
			escreva("\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// Exibição da Matriz B
		escreva("MATRIZ B TRANSPOSTA (3x2):\n")
		para (linha = 0; linha < 3; linha++)
		{
			para (coluna = 0; coluna < 2; coluna++)
			{
				escreva(B[linha][coluna], "\t")
			}
			escreva("\n")
		}
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
}

/*
Preencha uma matriz A de 2 x 3. Construa a matriz transposta B de 3 x 2, fazendo com que cada linha de A 
se torne uma coluna de B. 
Apresente as duas matrizes para comparação. 
Fórmula: B[coluna][linha] = A[linha][coluna] 
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 560; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */