programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// Procedimento para exibir a agenda completa
	funcao exibirAgenda(inteiro agenda[][])
	{
		inteiro d, h
		escreva("            AGENDA SEMANAL DO LABORATÓRIO      \n")
		linha()
		escreva("           H1 (08h)  H2 (10h)  H3 (14h)  H4 (16h)\n")

		para (d = 0; d < 5; d++)
		{
			escolha(d)
			{
				caso 0: escreva("Segunda:      ") pare
				caso 1: escreva("Terça:        ") pare
				caso 2: escreva("Quarta:       ") pare
				caso 3: escreva("Quinta:       ") pare
				caso 4: escreva("Sexta:        ") pare
			}

			para (h = 0; h < 4; h++)
			{
				escreva("[ ", agenda[d][h], " ]     ")
			}
			escreva("\n")
		}
		escreva("\nLegenda: 0 = Livre | 1 = Reservado\n")
	}

	// Procedimento para reservar um horário
	funcao reservarHorario(inteiro agenda[][])
	{
		inteiro dia, horario

		escreva("Informe o dia (1-Seg, 2-Ter, 3-Qua, 4-Qui, 5-Sex): ")
		leia(dia)
		escreva("Informe o horário (1-H1, 2-H2, 3-H3, 4-H4): ")
		leia(horario)

		// Validação de intervalo válido (dias 1 a 5 e horários 1 a 4)
		se (dia < 1 ou dia > 5 ou horario < 1 ou horario > 4)
		{
			escreva("Erro: Dia ou horário inválido!\n")
		}
		senao
		{
			// Ajusta os índices para a matriz (0 a 4 para dias, 0 a 3 para horários)
			inteiro iDia = dia - 1
			inteiro iHorario = horario - 1

			se (agenda[iDia][iHorario] == 1)
			{
				escreva("Erro: Este horário já está reservado!\n")
			}
			senao
			{
				agenda[iDia][iHorario] = 1
				escreva("Reserva realizada com sucesso!\n")
			}
		}
	}

	// Procedimento para cancelar uma reserva
	funcao cancelarReserva(inteiro agenda[][])
	{
		inteiro dia, horario

		escreva("Informe o dia (1-Seg, 2-Ter, 3-Qua, 4-Qui, 5-Sex): ")
		leia(dia)
		escreva("Informe o horário (1-H1, 2-H2, 3-H3, 4-H4): ")
		leia(horario)

		se (dia < 1 ou dia > 5 ou horario < 1 ou horario > 4)
		{
			escreva("Erro: Dia ou horário inválido!\n")
		}
		senao
		{
			inteiro iDia = dia - 1
			inteiro iHorario = horario - 1

			se (agenda[iDia][iHorario] == 0)
			{
				escreva("Erro: Este horário já está livre!\n")
			}
			senao
			{
				agenda[iDia][iHorario] = 0
				escreva("Cancelamento realizado com sucesso!\n")
			}
		}
	}

	// Função para contar quantos horários estão livres
	funcao inteiro contarHorariosLivres(inteiro agenda[][])
	{
		inteiro d, h
		inteiro livres = 0

		para (d = 0; d < 5; d++)
		{
			para (h = 0; h < 4; h++)
			{
				se (agenda[d][h] == 0)
				{
					livres = livres + 1
				}
			}
		}
		retorne livres
	}

	// Função para calcular a taxa de ocupação em porcentagem
	funcao real calcularTaxaOcupacao(inteiro agenda[][])
	{
		inteiro d, h
		inteiro reservados = 0
		inteiro totalHorarios = 20

		para (d = 0; d < 5; d++)
		{
			para (h = 0; h < 4; h++)
			{
				se (agenda[d][h] == 1)
				{
					reservados = reservados + 1
				}
			}
		}

		retorne (reservados * 100.0) / totalHorarios
	}

	funcao inicio()
	{
		// Matriz 5x4 inicializada com 0 (todos livres)
		inteiro agenda[5][4]
		inteiro d, h, opcao = 0

		para (d = 0; d < 5; d++)
		{
			para (h = 0; h < 4; h++)
			{
				agenda[d][h] = 0
			}
		}

		faca
		{
			linha()
			escreva("          SISTEMA DE AGENDA DO LABORATÓRIO     \n")
			linha()
			escreva("1 - Visualizar agenda\n")
			escreva("2 - Reservar horário\n")
			escreva("3 - Cancelar reserva\n")
			escreva("4 - Contar horários livres\n")
			escreva("5 - Calcular taxa de ocupação\n")
			escreva("6 - Sair\n")
			linha()
			escreva("Escolha uma opção: ")
			leia(opcao)

			linha()

			escolha(opcao)
			{
				caso 1:
					exibirAgenda(agenda)
					pare

				caso 2:
					reservarHorario(agenda)
					pare

				caso 3:
					cancelarReserva(agenda)
					pare

				caso 4:
					escreva("Total de horários livres: ", contarHorariosLivres(agenda), " de 20\n")
					pare

				caso 5:
					escreva("Taxa de ocupação atual: ", calcularTaxaOcupacao(agenda), "%\n")
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
Represente a agenda semanal de um laboratório por uma matriz 5 x 4: cinco dias úteis e quatro horários por 
dia. Use 0 para horário livre e 1 para horário reservado. 
Crie um menu para visualizar a agenda, reservar um horário, cancelar uma reserva, contar horários livres e 
calcular a taxa de ocupação. 
O programa deve validar dia e horário, impedir reserva duplicada e impedir o cancelamento de um horário 
livre. Organize as operações em funções ou procedimentos. 
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3812; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */