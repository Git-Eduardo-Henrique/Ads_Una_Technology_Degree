programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// Função auxiliar para retornar o nome do mês
	funcao cadeia obterNomeMes(inteiro mes)
	{
		escolha(mes)
		{
			caso 0: retorne "Janeiro"
			caso 1: retorne "Fevereiro"
			caso 2: retorne "Março"
			caso 3: retorne "Abril"
			caso 4: retorne "Maio"
			caso 5: retorne "Junho"
			caso 6: retorne "Julho"
			caso 7: retorne "Agosto"
			caso 8: retorne "Setembro"
			caso 9: retorne "Outubro"
			caso 10: retorne "Novembro"
			caso 11: retorne "Dezembro"
			caso contrario: retorne ""
		}
	}

	funcao inicio()
	{
		// Matriz 12 x 4: 12 meses e 4 semanas por mês
		real chuva[12][4]
		real mediasMensais[12]
		real totaisMensais[12]

		inteiro m, s
		real totalAnual = 0.0

		// Variáveis para rastrear maior chuva do mês e maior chuva semanal
		real maiorChuvaMes = -1.0
		inteiro mesMaisChuvoso = 0

		real maiorChuvaSemana = -1.0
		inteiro mesMaiorSemana = 0
		inteiro semanaMaiorRegistro = 0

		linha()
		escreva("     REGISTRO DE ÍNDICE PLUVIOMÉTRICO ANUAL    \n")
		linha()

		// Leitura dos dados de chuva
		para (m = 0; m < 12; m++)
		{
			totaisMensais[m] = 0.0
			escreva("--- ", obterNomeMes(m), " ---\n")

			para (s = 0; s < 4; s++)
			{
				faca
				{
					escreva("Chuva da Semana ", s + 1, " (mm): ")
					leia(chuva[m][s])

					se (chuva[m][s] < 0)
					{
						escreva("Erro: O índice de chuva não pode ser negativo!\n")
					}
				} enquanto (chuva[m][s] < 0)

				totaisMensais[m] = totaisMensais[m] + chuva[m][s]
				totalAnual = totalAnual + chuva[m][s]

				// Verificação da semana de maior registro individual
				se (chuva[m][s] > maiorChuvaSemana)
				{
					maiorChuvaSemana = chuva[m][s]
					mesMaiorSemana = m
					semanaMaiorRegistro = s + 1
				}
			}

			// Cálculo da média do mês atual
			mediasMensais[m] = totaisMensais[m] / 4.0

			// Verificação do mês mais chuvoso (pelo total do mês)
			se (totaisMensais[m] > maiorChuvaMes)
			{
				maiorChuvaMes = totaisMensais[m]
				mesMaisChuvoso = m
			}

			linha()
		}

		// Exibição dos Resultados
		escreva("               RELATÓRIO PLUVIOMÉTRICO         \n")
		linha()

		// Médias Mensais
		escreva("MÉDIAS MENSAIS DE CHUVA:\n")
		para (m = 0; m < 12; m++)
		{
			escreva(obterNomeMes(m), ": ", mediasMensais[m], " mm (Total: ", totaisMensais[m], " mm)\n")
		}

		linha()
		// Total Anual
		escreva("TOTAL ANUAL ACUMULADO: ", totalAnual, " mm\n")
		linha()

		// Mês mais chuvoso
		escreva("MÊS MAIS CHUVOSO: ", obterNomeMes(mesMaisChuvoso), " (Total de ", maiorChuvaMes, " mm)\n")

		// Semana de maior registro
		escreva("SEMANA DE MAIOR REGISTRO: Semana ", semanaMaiorRegistro, " de ", obterNomeMes(mesMaiorSemana), " (", maiorChuvaSemana, " mm)\n")

		linha()
	}
}
/*
Armazene, em uma matriz 12 x 4, os índices de chuva de quatro semanas de cada mês. Apresente total 
anual, média mensal, mês mais chuvoso e semana de maior registro.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2131; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */