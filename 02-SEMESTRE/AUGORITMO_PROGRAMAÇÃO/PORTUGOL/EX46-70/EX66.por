programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// 1. Função para verificar paridade (Retorna verdadeiro se for par)
	funcao logico ehPar(inteiro n)
	{
		retorne (n % 2 == 0)
	}

	// 2. Função para verificar primalidade (Retorna verdadeiro se for primo)
	funcao logico ehPrimo(inteiro n)
	{
		inteiro i, divisores = 0

		se (n <= 1)
		{
			retorne falso
		}

		para (i = 1; i <= n; i++)
		{
			se (n % i == 0)
			{
				divisores = divisores + 1
			}
		}

		retorne (divisores == 2)
	}

	// 3. Função para calcular fatorial (N!)
	funcao inteiro calcularFatorial(inteiro n)
	{
		inteiro i, fat = 1

		para (i = 1; i <= n; i++)
		{
			fat = fat * i
		}

		retorne fat
	}

	// 4. Função para calcular potência inteira (base^expoente)
	funcao inteiro calcularPotencia(inteiro baseNum, inteiro expoente)
	{
		inteiro i, resultado = 1

		para (i = 1; i <= expoente; i++)
		{
			resultado = resultado * baseNum
		}

		retorne resultado
	}

	// 5. Função para calcular somatório de 1 até N
	funcao inteiro calcularSomatorio(inteiro n)
	{
		inteiro i, soma = 0

		para (i = 1; i <= n; i++)
		{
			soma = soma + i
		}

		retorne soma
	}

	funcao inicio()
	{
		inteiro opcao = 0, num, num2

		faca
		{
			linha()
			escreva("         CALCULADORA DE OPERAÇÕES              \n")
			linha()
			escreva("1 - Verificar Paridade (Par ou Ímpar)\n")
			escreva("2 - Verificar Primalidade (Número Primo)\n")
			escreva("3 - Calcular Fatorial (N!)\n")
			escreva("4 - Calcular Potência Inteira (Base^Expoente)\n")
			escreva("5 - Calcular Somatório de 1 até N\n")
			escreva("6 - Sair\n")
			linha()
			escreva("Escolha uma opção: ")
			leia(opcao)

			linha()

			escolha(opcao)
			{
				caso 1:
					// PARIDADE
					escreva("Digite um número inteiro: ")
					leia(num)

					se (ehPar(num))
					{
						escreva("O número ", num, " é PAR!\n")
					}
					senao
					{
						escreva("O número ", num, " é ÍMPAR!\n")
					}
					pare

				caso 2:
					// PRIMALIDADE
					escreva("Digite um número inteiro: ")
					leia(num)

					se (ehPrimo(num))
					{
						escreva("O número ", num, " É PRIMO!\n")
					}
					senao
					{
						escreva("O número ", num, " NÃO é primo!\n")
					}
					pare

				caso 3:
					// FATORIAL
					faca
					{
						escreva("Digite um número inteiro e não negativo (0 ou maior): ")
						leia(num)

						se (num < 0)
						{
							escreva("Erro: Não existe fatorial de número negativo!\n")
						}
					} enquanto (num < 0)

					escreva("Fatorial de ", num, " (", num, "!): ", calcularFatorial(num), "\n")
					pare

				caso 4:
					// POTÊNCIA
					escreva("Digite a base (inteiro): ")
					leia(num)

					faca
					{
						escreva("Digite o expoente (inteiro não negativo): ")
						leia(num2)

						se (num2 < 0)
						{
							escreva("Erro: Informe um expoente maior ou igual a 0!\n")
						}
					} enquanto (num2 < 0)

					escreva("Resultado de ", num, "^", num2, ": ", calcularPotencia(num, num2), "\n")
					pare

				caso 5:
					// SOMATÓRIO DE 1 ATÉ N
					faca
					{
						escreva("Digite um número N (maior ou igual a 1): ")
						leia(num)

						se (num < 1)
						{
							escreva("Erro: N deve ser no mínimo 1!\n")
						}
					} enquanto (num < 1)

					escreva("Somatório de 1 até ", num, ": ", calcularSomatorio(num), "\n")
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
Crie funções para verificar paridade, primalidade, calcular fatorial, potência inteira e somatório de 1 até N. 
Disponibilize as operações em um menu repetitivo.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */