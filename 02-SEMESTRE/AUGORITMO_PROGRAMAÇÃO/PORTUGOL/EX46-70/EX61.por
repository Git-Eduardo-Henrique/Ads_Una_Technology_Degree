programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// Procedimento para exibir o mapa da sala
	funcao exibirSala(inteiro sala[][])
	{
		inteiro f, c
		escreva("               MAPA DE LUGARES DA SALA          \n")
		linha()
		escreva("          C1  C2  C3  C4  C5  C6  C7  C8\n")

		para (f = 0; f < 6; f++)
		{
			escreva("Fileira ", f + 1, ": ")

			para (c = 0; c < 8; c++)
			{
				escreva("[", sala[f][c], "] ")
			}
			escreva("\n")
		}
		escreva("\nLegenda: 0 = Livre | 1 = Ocupado\n")
	}

	// Procedimento para reservar um lugar
	funcao reservarLugar(inteiro sala[][])
	{
		inteiro fileira, cadeira

		escreva("Informe a fileira (1 a 6): ")
		leia(fileira)
		escreva("Informe a cadeira (1 a 8): ")
		leia(cadeira)

		// Validação dos limites da matriz
		se (fileira < 1 ou fileira > 6 ou cadeira < 1 ou cadeira > 8)
		{
			escreva("Erro: Fileira ou cadeira inválida!\n")
		}
		senao
		{
			// Ajuste de índice (1..6 -> 0..5 e 1..8 -> 0..7)
			inteiro iFileira = fileira - 1
			inteiro iCadeira = cadeira - 1

			se (sala[iFileira][iCadeira] == 1)
			{
				escreva("Erro: Este lugar já está ocupado!\n")
			}
			senao
			{
				sala[iFileira][iCadeira] = 1
				escreva("Lugar reservado com sucesso!\n")
			}
		}
	}

	// Procedimento para cancelar uma reserva
	funcao cancelarReserva(inteiro sala[][])
	{
		inteiro fileira, cadeira

		escreva("Informe a fileira (1 a 6): ")
		leia(fileira)
		escreva("Informe a cadeira (1 a 8): ")
		leia(cadeira)

		se (fileira < 1 ou fileira > 6 ou cadeira < 1 ou cadeira > 8)
		{
			escreva("Erro: Fileira ou cadeira inválida!\n")
		}
		senao
		{
			inteiro iFileira = fileira - 1
			inteiro iCadeira = cadeira - 1

			se (sala[iFileira][iCadeira] == 0)
			{
				escreva("Erro: Este lugar já está livre!\n")
			}
			senao
			{
				sala[iFileira][iCadeira] = 0
				escreva("Reserva cancelada com sucesso!\n")
			}
		}
	}

	// Procedimento para contar e exibir os lugares livres por fileira
	funcao contarLivresPorFileira(inteiro sala[][])
	{
		inteiro f, c, contLivre, totalGeral = 0

		escreva("     CONTAGEM DE LUGARES LIVRES POR FILEIRA    \n")
		linha()

		para (f = 0; f < 6; f++)
		{
			contLivre = 0
			para (c = 0; c < 8; c++)
			{
				se (sala[f][c] == 0)
				{
					contLivre = contLivre + 1
				}
			}
			totalGeral = totalGeral + contLivre
			escreva("Fileira ", f + 1, ": ", contLivre, " lugar(es) livre(s) de 8\n")
		}

		linha()
		escreva("Total de lugares livres na sala: ", totalGeral, " de 48\n")
	}

	funcao inicio()
	{
		// Matriz 6x8 inicializada com 0 (todos livres)
		inteiro sala[6][8]
		inteiro f, c, opcao = 0

		para (f = 0; f < 6; f++)
		{
			para (c = 0; c < 8; c++)
			{
				sala[f][c] = 0
			}
		}

		faca
		{
			linha()
			escreva("          SISTEMA DE RESERVA DE SALA           \n")
			linha()
			escreva("1 - Visualizar mapa da sala\n")
			escreva("2 - Reservar lugar\n")
			escreva("3 - Cancelar reserva\n")
			escreva("4 - Contar lugares livres por fileira\n")
			escreva("5 - Sair\n")
			linha()
			escreva("Escolha uma opção: ")
			leia(opcao)

			linha()

			escolha(opcao)
			{
				caso 1:
					exibirSala(sala)
					pare

				caso 2:
					reservarLugar(sala)
					pare

				caso 3:
					cancelarReserva(sala)
					pare

				caso 4:
					contarLivresPorFileira(sala)
					pare

				caso 5:
					escreva("Encerrando o programa...\n")
					pare

				caso contrario:
					escreva("Opção inválida! Tente novamente.\n")
			}

		} enquanto (opcao != 5)
	}
}
/*
Represente uma sala com matriz 6 x 8, usando 0 para livre e 1 para ocupado. Permita visualizar, reservar, 
cancelar e contar lugares livres por fileira. 
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3298; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */