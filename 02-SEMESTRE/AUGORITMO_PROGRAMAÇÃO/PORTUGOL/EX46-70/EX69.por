programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// Procedimento para cadastrar estudante
	funcao cadastrarEstudante(inteiro matriculas[], cadeia nomes[], real medias[], inteiro &total)
	{
		inteiro matriculaBusca, i
		logico existe = falso

		se (total >= 20)
		{
			escreva("Erro: Limite máximo de 20 estudantes atingido!\n")
		}
		senao
		{
			escreva("Digite a matrícula do estudante: ")
			leia(matriculaBusca)

			// Verifica se a matrícula já está cadastrada
			para (i = 0; i < total; i++)
			{
				se (matriculas[i] == matriculaBusca)
				{
					existe = verdadeiro
				}
			}

			se (existe)
			{
				escreva("Erro: Matrícula já cadastrada no sistema!\n")
			}
			senao
			{
				matriculas[total] = matriculaBusca

				escreva("Digite o nome do estudante: ")
				leia(nomes[total])

				faca
				{
					escreva("Digite a média final (0 a 10): ")
					leia(medias[total])

					se (medias[total] < 0.0 ou medias[total] > 10.0)
					{
						escreva("Erro: Média deve estar no intervalo de 0 a 10!\n")
					}
				} enquanto (medias[total] < 0.0 ou medias[total] > 10.0)

				total = total + 1
				escreva("Estudante cadastrado com sucesso!\n")
			}
		}
	}

	// Procedimento para consultar estudante por matrícula
	funcao consultarEstudante(inteiro matriculas[], cadeia nomes[], real medias[], inteiro total)
	{
		inteiro matriculaBusca, i, indice = -1

		escreva("Digite a matrícula para consulta: ")
		leia(matriculaBusca)

		para (i = 0; i < total; i++)
		{
			se (matriculas[i] == matriculaBusca)
			{
				indice = i
			}
		}

		se (indice == -1)
		{
			escreva("Estudante não encontrado!\n")
		}
		senao
		{
			escreva("Matrícula: ", matriculas[indice], "\n")
			escreva("Nome: ", nomes[indice], "\n")
			escreva("Média: ", medias[indice], "\n")
			escreva("Situação: ")
			se (medias[indice] >= 6.0)
			{
				escreva("APROVADO\n")
			}
			senao
			{
				escreva("REPROVADO\n")
			}
		}
	}

	// Procedimento para alterar a média de um estudante
	funcao alterarMedia(inteiro matriculas[], cadeia nomes[], real medias[], inteiro total)
	{
		inteiro matriculaBusca, i, indice = -1
		real novaMedia

		escreva("Digite a matrícula do estudante: ")
		leia(matriculaBusca)

		para (i = 0; i < total; i++)
		{
			se (matriculas[i] == matriculaBusca)
			{
				indice = i
			}
		}

		se (indice == -1)
		{
			escreva("Estudante não encontrado!\n")
		}
		senao
		{
			escreva("Estudante selecionado: ", nomes[indice], " (Média atual: ", medias[indice], ")\n")
			
			faca
			{
				escreva("Digite a nova média (0 a 10): ")
				leia(novaMedia)

				se (novaMedia < 0.0 ou novaMedia > 10.0)
				{
					escreva("Erro: Média deve estar entre 0 e 10!\n")
				}
			} enquanto (novaMedia < 0.0 ou novaMedia > 10.0)

			medias[indice] = novaMedia
			escreva("Média atualizada com sucesso!\n")
		}
	}

	// Procedimento para listar por situação (Aprovado >= 6.0 | Reprovado < 6.0)
	funcao listarPorSituacao(inteiro matriculas[], cadeia nomes[], real medias[], inteiro total)
	{
		inteiro opcaoSituacao, i, cont = 0

		se (total == 0)
		{
			escreva("Nenhum estudante cadastrado.\n")
		}
		senao
		{
			escreva("Filtrar por:\n")
			escreva("1 - Aprovados (Média >= 6.0)\n")
			escreva("2 - Reprovados (Média < 6.0)\n")
			escreva("Escolha a opção: ")
			leia(opcaoSituacao)

			linha()

			se (opcaoSituacao == 1)
			{
				escreva("ESTUDANTES APROVADOS:\n")
				para (i = 0; i < total; i++)
				{
					se (medias[i] >= 6.0)
					{
						escreva("Matrícula: ", matriculas[i], " | Nome: ", nomes[i], " | Média: ", medias[i], "\n")
						cont = cont + 1
					}
				}
				se (cont == 0)
				{
					escreva("Nenhum estudante aprovado.\n")
				}
			}
			senao se (opcaoSituacao == 2)
			{
				escreva("ESTUDANTES REPROVADOS:\n")
				para (i = 0; i < total; i++)
				{
					se (medias[i] < 6.0)
					{
						escreva("Matrícula: ", matriculas[i], " | Nome: ", nomes[i], " | Média: ", medias[i], "\n")
						cont = cont + 1
					}
				}
				se (cont == 0)
				{
					escreva("Nenhum estudante reprovado.\n")
				}
			}
			senao
			{
				escreva("Opção inválida!\n")
			}
		}
	}

	// Procedimento para calcular e exibir estatísticas da turma
	funcao exibirEstatisticas(inteiro matriculas[], cadeia nomes[], real medias[], inteiro total)
	{
		inteiro i
		real somaMedias = 0.0, mediaGeral = 0.0
		real maiorMedia = 0.0, menorMedia = 0.0
		inteiro aprovados = 0, reprovados = 0

		se (total == 0)
		{
			escreva("Nenhum estudante cadastrado para calcular estatísticas.\n")
		}
		senao
		{
			maiorMedia = medias[0]
			menorMedia = medias[0]

			para (i = 0; i < total; i++)
			{
				somaMedias = somaMedias + medias[i]

				se (medias[i] >= 6.0)
				{
					aprovados = aprovados + 1
				}
				senao
				{
					reprovados = reprovados + 1
				}

				se (medias[i] > maiorMedia)
				{
					maiorMedia = medias[i]
				}

				se (medias[i] < menorMedia)
				{
					menorMedia = medias[i]
				}
			}

			mediaGeral = somaMedias / total

			escreva("             ESTATÍSTICAS DA TURMA             \n")
			linha()
			escreva("Total de estudantes cadastrados: ", total, "\n")
			escreva("Média geral da turma: ", mediaGeral, "\n")
			escreva("Maior média: ", maiorMedia, "\n")
			escreva("Menor média: ", menorMedia, "\n")
			escreva("Total de Aprovados: ", aprovados, " (", (aprovados * 100.0) / total, "%)\n")
			escreva("Total de Reprovados: ", reprovados, " (", (reprovados * 100.0) / total, "%)\n")
		}
	}

	funcao inicio()
	{
		inteiro matriculas[20]
		cadeia nomes[20]
		real medias[20]

		inteiro totalCadastrados = 0
		inteiro opcao = 0

		faca
		{
			linha()
			escreva("       SISTEMA DE CADASTRO DE ESTUDANTES       \n")
			linha()
			escreva("1 - Cadastrar estudante\n")
			escreva("2 - Consultar por matrícula\n")
			escreva("3 - Alterar média\n")
			escreva("4 - Listar por situação (Aprovado/Reprovado)\n")
			escreva("5 - Exibir estatísticas da turma\n")
			escreva("6 - Sair\n")
			linha()
			escreva("Escolha uma opção: ")
			leia(opcao)

			linha()

			escolha(opcao)
			{
				caso 1:
					cadastrarEstudante(matriculas, nomes, medias, totalCadastrados)
					pare

				caso 2:
					consultarEstudante(matriculas, nomes, medias, totalCadastrados)
					pare

				caso 3:
					alterarMedia(matriculas, nomes, medias, totalCadastrados)
					pare

				caso 4:
					listarPorSituacao(matriculas, nomes, medias, totalCadastrados)
					pare

				caso 5:
					exibirEstatisticas(matriculas, nomes, medias, totalCadastrados)
					pare

				caso 6:
					escreva("Encerrando o programa...\n")
					pare

				caso contrario:
					escreva("Opção inválida! Tente novamente.\n")
			}

		} enquanto (opcao != 6)
	}
}
/*
Cadastre até vinte estudantes em vetores de matrícula, nome e média. Impeça matrícula repetida e 
ofereça menu para cadastrar, consultar, alterar média, listar por situação e exibir estatísticas. Organize 
cada operação em função ou procedimento.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5502; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */