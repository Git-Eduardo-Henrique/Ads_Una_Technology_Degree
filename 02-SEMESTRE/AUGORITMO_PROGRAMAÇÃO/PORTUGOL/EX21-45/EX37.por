programa
{
	funcao inicio()
	{
		inteiro matriz[4][4]
		inteiro somaPrincipal = 0
		inteiro somaSecundaria = 0

		// Entrada de dados: Preenchimento da matriz
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("=-=-=-=-= Preenchimento da Matriz 4x4 =-=-=-=-=\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		para (inteiro linha = 0; linha < 4; linha++)
		{
			para (inteiro coluna = 0; coluna < 4; coluna++)
			{
				escreva("Digite o elemento [", linha, "][", coluna, "]: ")
				leia(matriz[linha][coluna])
			}
		}

		// Processamento e Exibição da Diagonal Principal
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Elementos da Diagonal Principal:\n")
		para (inteiro i = 0; i < 4; i++)
		{
			escreva(matriz[i][i], " ")
			somaPrincipal += matriz[i][i]
		}
		escreva("Soma da Diagonal Principal: ", somaPrincipal, "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// Processamento e Exibição da Diagonal Secundária
		escreva("Elementos da Diagonal Secundária:\n")
		para (inteiro i = 0; i < 4; i++)
		{
			// Numa matriz 4x4, a coluna da diagonal secundária é sempre (3 - linha)
			escreva(matriz[i][3 - i], " ")
			somaSecundaria += matriz[i][3 - i]
		}
		escreva("Soma da Diagonal Secundária: ", somaSecundaria, "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// Comparação das somas
		escreva("Resultado da Comparação:")
		se (somaPrincipal > somaSecundaria)
		{
			escreva("A Diagonal Principal possui a maior soma (", somaPrincipal, ").\n")
		}
		senao se (somaSecundaria > somaPrincipal)
		{
			escreva("A Diagonal Secundária possui a maior soma (", somaSecundaria, ").\n")
		}
		senao
		{
			escreva("Ambas as diagonais possuem somas iguais (", somaPrincipal, ").\n")
		}
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
}

/*
Preencha uma matriz 4 x 4. Apresente os elementos da diagonal principal e da diagonal secundária, além da 
soma de cada diagonal. 
Informe qual diagonal possui a maior soma ou se os resultados são iguais.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1479; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */