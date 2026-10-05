programa
{
	funcao inicio()
	{
		// Vetores para armazenar até 10 produtos
		inteiro codigos[10]
		cadeia nomes[10]
		inteiro quantidades[10]
		
		inteiro totalCadastrados = 0
		inteiro opcao = 0
		
		// Variáveis auxiliares
		inteiro codigoBusca, quantidadeMov, i, indiceEncontrado

		faca
		{
			escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			escreva("           SISTEMA DE ESTOQUE                  \n")
			escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			escreva("1 - Cadastrar produto\n")
			escreva("2 - Registrar entrada de unidades\n")
			escreva("3 - Registrar saída de unidades\n")
			escreva("4 - Consultar produto por código\n")
			escreva("5 - Listar produtos com menos de 5 unidades\n")
			escreva("6 - Sair\n")
			escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			escreva("Escolha uma opção: ")
			leia(opcao)

			escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

			escolha(opcao)
			{
				caso 1:
					// CADASTRAR PRODUTO
					se (totalCadastrados >= 10)
					{
						escreva("Limite máximo de 10 produtos atingido!\n")
					}
					senao
					{
						escreva("Digite o código do produto: ")
						leia(codigoBusca)

						// Verifica se o código já existe
						indiceEncontrado = -1
						para (i = 0; i < totalCadastrados; i++)
						{
							se (codigos[i] == codigoBusca)
							{
								indiceEncontrado = i
							}
						}

						se (indiceEncontrado != -1)
						{
							escreva("Erro: Código já cadastrado!\n")
						}
						senao
						{
							codigos[totalCadastrados] = codigoBusca
							escreva("Digite o nome do produto: ")
							leia(nomes[totalCadastrados])
							escreva("Digite a quantidade inicial: ")
							leia(quantidades[totalCadastrados])

							totalCadastrados = totalCadastrados + 1
							escreva("Produto cadastrado com sucesso!\n")
						}
					}
					pare

				caso 2:
					// REGISTRAR ENTRADA
					escreva("Digite o código do produto para entrada: ")
					leia(codigoBusca)

					indiceEncontrado = -1
					para (i = 0; i < totalCadastrados; i++)
					{
						se (codigos[i] == codigoBusca)
						{
							indiceEncontrado = i
						}
					}

					se (indiceEncontrado == -1)
					{
						escreva("Produto não encontrado!\n")
					}
					senao
					{
						escreva("Digite a quantidade de ENTRADA: ")
						leia(quantidadeMov)

						se (quantidadeMov > 0)
						{
							quantidades[indiceEncontrado] = quantidades[indiceEncontrado] + quantidadeMov
							escreva("Entrada registrada! Novo estoque: ", quantidades[indiceEncontrado], "\n")
						}
						senao
						{
							escreva("Quantidade inválida!\n")
						}
					}
					pare

				caso 3:
					// REGISTRAR SAÍDA
					escreva("Digite o código do produto para saída: ")
					leia(codigoBusca)

					indiceEncontrado = -1
					para (i = 0; i < totalCadastrados; i++)
					{
						se (codigos[i] == codigoBusca)
						{
							indiceEncontrado = i
						}
					}

					se (indiceEncontrado == -1)
					{
						escreva("Produto não encontrado!\n")
					}
					senao
					{
						escreva("Digite a quantidade de SAÍDA: ")
						leia(quantidadeMov)

						se (quantidadeMov <= 0)
						{
							escreva("Quantidade inválida!\n")
						}
						senao se (quantidadeMov > quantidades[indiceEncontrado])
						{
							escreva("Operação cancelada: Estoque insuficiente! Estoque atual: ", quantidades[indiceEncontrado], "\n")
						}
						senao
						{
							quantidades[indiceEncontrado] = quantidades[indiceEncontrado] - quantidadeMov
							escreva("Saída registrada! Novo estoque: ", quantidades[indiceEncontrado], "\n")
						}
					}
					pare

				caso 4:
					// CONSULTAR PRODUTO
					escreva("Digite o código do produto: ")
					leia(codigoBusca)

					indiceEncontrado = -1
					para (i = 0; i < totalCadastrados; i++)
					{
						se (codigos[i] == codigoBusca)
						{
							indiceEncontrado = i
						}
					}

					se (indiceEncontrado == -1)
					{
						escreva("Produto não encontrado!\n")
					}
					senao
					{
						escreva("Código: ", codigos[indiceEncontrado], "\n")
						escreva("Nome: ", nomes[indiceEncontrado], "\n")
						escreva("Quantidade em Estoque: ", quantidades[indiceEncontrado], "\n")
					}
					pare

				caso 5:
					// LISTAR PRODUTOS COM MENOS DE 5 UNIDADES
					escreva("PRODUTOS COM ESTOQUE ABAIXO DE 5 UNIDADES:\n")
					inteiro contadorBaixoEstoque = 0

					para (i = 0; i < totalCadastrados; i++)
					{
						se (quantidades[i] < 5)
						{
							escreva("Código: ", codigos[i], " | Nome: ", nomes[i], " | Quantidade: ", quantidades[i], "\n")
							contadorBaixoEstoque = contadorBaixoEstoque + 1
						}
					}

					se (contadorBaixoEstoque == 0)
					{
						escreva("Nenhum produto com estoque abaixo de 5 unidades.\n")
					}
					pare

				caso 6:
					escreva("Encerrando o sistema...\n")
					pare

				caso contrario:
					escreva("Opção inválida! Tente novamente.\n")
			}

		} enquanto (opcao != 6)
	}
}
/*
Crie um sistema para até dez produtos, usando vetores para código, nome e quantidade. O menu deve 
permitir: 
• cadastrar um produto sem repetir o código; 
• registrar entrada de unidades; 
• registrar saída sem permitir estoque negativo; 
• consultar um produto pelo código; 
• listar os produtos com menos de cinco unidades; 
• encerrar o programa.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 524; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */