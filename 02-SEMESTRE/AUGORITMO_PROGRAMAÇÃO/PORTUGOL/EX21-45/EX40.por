programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real notas[5][3]
		real somaEstudante, somaAvaliacao
		real maiorNota = -1.0
		inteiro linhaMaior = 0, colunaMaior = 0
		inteiro contadorAcimaSete = 0

		// Entrada de dados (Leitura das notas)
		para (inteiro l = 0; l < 5; l++)
		{
			escreva("Digite as 3 notas do estudante ", l + 1, ":\n")
			para (inteiro c = 0; c < 3; c++)
			{
				escreva("Avaliação ", c + 1, ": ")
				leia(notas[l][c])

				// Verifica a maior nota e sua posição
				se (notas[l][c] > maiorNota)
				{
					maiorNota = notas[l][c]
					linhaMaior = l
					colunaMaior = c
				}

				// Conta notas maiores ou iguais a 7
				se (notas[l][c] >= 7.0)
				{
					contadorAcimaSete++
				}
			}
			escreva("\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// 1. Média de cada estudante
		escreva("MÉDIA DE CADA ESTUDANTE:\n")
		para (inteiro l = 0; l < 5; l++)
		{
			somaEstudante = 0.0
			para (inteiro c = 0; c < 3; c++)
			{
				somaEstudante += notas[l][c]
			}
			real mediaEstudante = somaEstudante / 3
			escreva("Estudante ", l + 1, ": ", mat.arredondar(mediaEstudante, 2), "\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// 2. Média de cada avaliação
		escreva("MÉDIA DE CADA AVALIAÇÃO:\n")
		para (inteiro c = 0; c < 3; c++)
		{
			somaAvaliacao = 0.0
			para (inteiro l = 0; l < 5; l++)
			{
				somaAvaliacao += notas[l][c]
			}
			real mediaAvaliacao = somaAvaliacao / 5
			escreva("Avaliação ", c + 1, ": ", mat.arredondar(mediaAvaliacao, 2), "\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// 3. Maior nota e sua posição
		escreva("MAIOR NOTA E SUA POSIÇÃO:\n")
		escreva("Nota: ", maiorNota, " (Posição: Linha ", linhaMaior, ", Coluna ", colunaMaior, ")\n")

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// 4. Quantidade de notas >= 7
		escreva("NOTAS IGUAIS OU SUPERIORES A 7:", contadorAcimaSete, "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
}

/*
Armazene em uma matriz 5 x 3 as notas de cinco estudantes em três avaliações. Depois, apresente: 
• a média de cada estudante; 
• a média de cada avaliação; 
• a maior nota e sua posição na matriz; 
• a quantidade total de notas iguais ou superiores a 7.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1971; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */