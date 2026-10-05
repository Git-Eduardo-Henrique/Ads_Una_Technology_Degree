programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	funcao inicio()
	{
		cadeia nomes[10]
		real notas[10]

		inteiro i
		real somaNotas = 0.0
		real media = 0.0
		real maiorNota = 0.0
		real menorNota = 0.0
		inteiro aprovados = 0
		real percentualAprovacao = 0.0

		linha()
		escreva("      CADASTRO DE NOTAS DOS ESTUDANTES        \n")
		linha()

		// Leitura dos nomes e notas
		para (i = 0; i < 10; i++)
		{
			escreva("Nome do ", i + 1, "º estudante: ")
			leia(nomes[i])

			// Validação da nota entre 0 e 10
			faca
			{
				escreva("Nota de ", nomes[i], " (0 a 10): ")
				leia(notas[i])

				se (notas[i] < 0 ou notas[i] > 10)
				{
					escreva("Erro: A nota deve estar entre 0 e 10!\n")
				}
			} enquanto (notas[i] < 0 ou notas[i] > 10)

			somaNotas = somaNotas + notas[i]

			// Contagem de aprovados (considerando nota mínima 6.0)
			se (notas[i] >= 6.0)
			{
				aprovados = aprovados + 1
			}

			// Inicialização e atualização de maior e menor nota
			se (i == 0)
			{
				maiorNota = notas[0]
				menorNota = notas[0]
			}
			senao
			{
				se (notas[i] > maiorNota)
				{
					maiorNota = notas[i]
				}

				se (notas[i] < menorNota)
				{
					menorNota = notas[i]
				}
			}

			linha()
		}

		// Cálculos estatísticos
		media = somaNotas / 10.0
		percentualAprovacao = (aprovados * 100.0) / 10.0

		// Exibição dos Resultados
		escreva("             RELATÓRIO FINAL                  \n")
		linha()
		escreva("Média da turma: ", media, "\n")
		escreva("Maior nota: ", maiorNota, "\n")
		escreva("Menor nota: ", menorNota, "\n")
		escreva("Percentual de aprovação (nota >= 6.0): ", percentualAprovacao, "%\n")
		linha()

		// Listagem dos alunos acima da média
		escreva("Estudantes com nota ACIMA DA MÉDIA (>", media, "):\n")
		inteiro contadorAcimaMedia = 0

		para (i = 0; i < 10; i++)
		{
			se (notas[i] > media)
			{
				escreva("- ", nomes[i], " (Nota: ", notas[i], ")\n")
				contadorAcimaMedia = contadorAcimaMedia + 1
			}
		}

		se (contadorAcimaMedia == 0)
		{
			escreva("Nenhum estudante ficou acima da média.\n")
		}

		linha()
	}
}
/*
Leia nome e nota de dez estudantes em vetores paralelos. Apresente média, nomes acima da média, 
maior e menor nota e percentual de aprovação. 
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 169; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */