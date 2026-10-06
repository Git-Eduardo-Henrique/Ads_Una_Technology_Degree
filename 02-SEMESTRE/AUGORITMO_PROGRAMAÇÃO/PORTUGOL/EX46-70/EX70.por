programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// Procedimento para inicializar os quartos do hotel
	funcao inicializarQuartos(inteiro numeros[], cadeia tipos[], real diarias[], logico ocupados[], cadeia hospedes[], inteiro diariasAcumuladas[])
	{
		inteiro i
		para (i = 0; i < 10; i++)
		{
			numeros[i] = 101 + i
			ocupados[i] = falso
			hospedes[i] = ""
			diariasAcumuladas[i] = 0

			// Define tipos e valores de diária
			se (i < 4)
			{
				tipos[i] = "Solteiro"
				diarias[i] = 100.0
			}
			senao se (i < 8)
			{
				tipos[i] = "Casal"
				diarias[i] = 180.0
			}
			senao
			{
				tipos[i] = "Suíte Luxo"
				diarias[i] = 300.0
			}
		}
	}

	// Função para buscar o índice de um quarto pelo número
	funcao inteiro buscarQuarto(inteiro num, inteiro numeros[])
	{
		inteiro i
		para (i = 0; i < 10; i++)
		{
			se (numeros[i] == num)
			{
				retorne i
			}
		}
		retorne -1
	}

	// 1. Consultar Disponibilidade
	funcao consultarDisponibilidade(inteiro numeros[], cadeia tipos[], real diarias[], logico ocupados[])
	{
		inteiro i, livres = 0

		escreva("          DISPONIBILIDADE DE QUARTOS           \n")
		linha()

		para (i = 0; i < 10; i++)
		{
			escreva("Quarto ", numeros[i], " | Tipo: ", tipos[i], " | Diária: R$ ", diarias[i])
			se (ocupados[i])
			{
				escreva(" | [ OCUPADO ]\n")
			}
			senao
			{
				escreva(" | [ LIVRE ]\n")
				livres = livres + 1
			}
		}

		linha()
		escreva("Total de quartos livres: ", livres, " de 10\n")
	}

	// 2. Realizar Check-in
	funcao realizarCheckIn(inteiro numeros[], cadeia tipos[], real diarias[], logico ocupados[], cadeia hospedes[], inteiro diariasAcumuladas[])
	{
		inteiro numQuarto, idx, qtdDiarias

		escreva("Informe o número do quarto para Check-in (101 a 110): ")
		leia(numQuarto)

		idx = buscarQuarto(numQuarto, numeros)

		se (idx == -1)
		{
			escreva("Erro: Quarto não encontrado!\n")
		}
		senao se (ocupados[idx])
		{
			escreva("Erro: O quarto ", numQuarto, " já está ocupado!\n")
		}
		senao
		{
			escreva("Nome do Hóspede: ")
			leia(hospedes[idx])

			faca
			{
				escreva("Quantidade de diárias iniciais: ")
				leia(qtdDiarias)

				se (qtdDiarias <= 0)
				{
					escreva("Erro: Quantidade de diárias deve ser maior que 0!\n")
				}
			} enquanto (qtdDiarias <= 0)

			ocupados[idx] = verdadeiro
			diariasAcumuladas[idx] = qtdDiarias

			escreva("Check-in realizado com sucesso no Quarto ", numQuarto, "!\n")
		}
	}

	// 3. Registrar Diárias Extras
	funcao registrarDiariasExtras(inteiro numeros[], logico ocupados[], cadeia hospedes[], inteiro diariasAcumuladas[])
	{
		inteiro numQuarto, idx, extras

		escreva("Informe o número do quarto: ")
		leia(numQuarto)

		idx = buscarQuarto(numQuarto, numeros)

		se (idx == -1)
		{
			escreva("Erro: Quarto não encontrado!\n")
		}
		senao se (nao ocupados[idx])
		{
			escreva("Erro: O quarto ", numQuarto, " está vago (não há hóspede no momento)!\n")
		}
		senao
		{
			escreva("Hóspede: ", hospedes[idx], " (Diárias atuais: ", diariasAcumuladas[idx], ")\n")

			faca
			{
				escreva("Quantidade de diárias extras a adicionar: ")
				leia(extras)

				se (extras <= 0)
				{
					escreva("Erro: A quantidade deve ser maior que 0!\n")
				}
			} enquanto (extras <= 0)

			diariasAcumuladas[idx] = diariasAcumuladas[idx] + extras
			escreva("Diárias adicionadas! Total atual: ", diariasAcumuladas[idx], " diárias.\n")
		}
	}

	// 4. Fazer Check-out com Cálculo do Total
	funcao realizarCheckOut(inteiro numeros[], cadeia tipos[], real diarias[], logico ocupados[], cadeia hospedes[], inteiro diariasAcumuladas[], real &faturamentoTotal)
	{
		inteiro numQuarto, idx
		real valorTotal

		escreva("Informe o número do quarto para Check-out: ")
		leia(numQuarto)

		idx = buscarQuarto(numQuarto, numeros)

		se (idx == -1)
		{
			escreva("Erro: Quarto não encontrado!\n")
		}
		senao se (nao ocupados[idx])
		{
			escreva("Erro: O quarto ", numQuarto, " já está vago!\n")
		}
		senao
		{
			valorTotal = diariasAcumuladas[idx] * diarias[idx]
			faturamentoTotal = faturamentoTotal + valorTotal

			linha()
			escreva("                  EXTRATO DE CHECK-OUT         \n")
			linha()
			escreva("Quarto: ", numeros[idx], " (", tipos[idx], ")\n")
			escreva("Hóspede: ", hospedes[idx], "\n")
			escreva("Diárias utilizadas: ", diariasAcumuladas[idx], "\n")
			escreva("Valor unitário da diária: R$ ", diarias[idx], "\n")
			escreva("TOTAL A PAGAR: R$ ", valorTotal, "\n")
			linha()

			// Libera o quarto
			ocupados[idx] = falso
			hospedes[idx] = ""
			diariasAcumuladas[idx] = 0

			escreva("Check-out concluído e quarto liberado com sucesso!\n")
		}
	}

	// 5. Emitir Relatório de Ocupação e Faturamento
	funcao emitirRelatorio(inteiro numeros[], cadeia tipos[], real diarias[], logico ocupados[], cadeia hospedes[], inteiro diariasAcumuladas[], real faturamentoTotal)
	{
		inteiro i, ocupadosCont = 0
		real taxaOcupacao, faturamentoPendente = 0.0

		escreva("          RELATÓRIO DE OCUPAÇÃO E FATURAMENTO  \n")
		linha()

		para (i = 0; i < 10; i++)
		{
			se (ocupados[i])
			{
				ocupadosCont = ocupadosCont + 1
				real subtotal = diariasAcumuladas[i] * diarias[i]
				faturamentoPendente = faturamentoPendente + subtotal

				escreva("Quarto ", numeros[i], " [", tipos[i], "] - Hóspede: ", hospedes[i])
				escreva(" | Diárias: ", diariasAcumuladas[i], " | Subtotal Parcial: R$ ", subtotal, "\n")
			}
		}

		taxaOcupacao = (ocupadosCont * 100.0) / 10.0

		linha()
		escreva("Quartos ocupados: ", ocupadosCont, " de 10\n")
		escreva("Taxa de ocupação atual: ", taxaOcupacao, "%\n")
		escreva("Faturamento em aberto (hóspedes atuais): R$ ", faturamentoPendente, "\n")
		escreva("FATURAMENTO TOTAL REALIZADO (CHECK-OUTS): R$ ", faturamentoTotal, "\n")
	}

	funcao inicio()
	{
		// Vetores paralelos para 10 quartos
		inteiro numeros[10]
		cadeia tipos[10]
		real diarias[10]
		logico ocupados[10]
		cadeia hospedes[10]
		inteiro diariasAcumuladas[10]

		real faturamentoTotal = 0.0
		inteiro opcao = 0

		// Inicialização dos dados dos quartos
		inicializarQuartos(numeros, tipos, diarias, ocupados, hospedes, diariasAcumuladas)

		faca
		{
			linha()
			escreva("         SISTEMA DE GESTÃO DE HOTEL            \n")
			linha()
			escreva("1 - Consultar disponibilidade de quartos\n")
			escreva("2 - Realizar Check-in\n")
			escreva("3 - Registrar diárias extras\n")
			escreva("4 - Realizar Check-out (Fechar conta)\n")
			escreva("5 - Relatório de ocupação e faturamento\n")
			escreva("6 - Sair\n")
			linha()
			escreva("Escolha uma opção: ")
			leia(opcao)

			linha()

			escolha(opcao)
			{
				caso 1:
					consultarDisponibilidade(numeros, tipos, diarias, ocupados)
					pare

				caso 2:
					realizarCheckIn(numeros, tipos, diarias, ocupados, hospedes, diariasAcumuladas)
					pare

				caso 3:
					registrarDiariasExtras(numeros, ocupados, hospedes, diariasAcumuladas)
					pare

				caso 4:
					realizarCheckOut(numeros, tipos, diarias, ocupados, hospedes, diariasAcumuladas, faturamentoTotal)
					pare

				caso 5:
					emitirRelatorio(numeros, tipos, diarias, ocupados, hospedes, diariasAcumuladas, faturamentoTotal)
					pare

				caso 6:
					escreva("Encerrando o sistema do hotel...\n")
					pare

				caso contrario:
					escreva("Opção inválida! Tente novamente.\n")
			}

		} enquanto (opcao != 6)
	}
}
/*
Represente dez quartos com vetores para número, tipo, diária, situação e nome do hóspede. Crie opções 
para consultar disponibilidade, realizar check-in, registrar diárias extras, fazer check-out com cálculo do 
total e emitir relatório de ocupação e faturamento. Valide todas as operações e organize o sistema em 
funções.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7369; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */