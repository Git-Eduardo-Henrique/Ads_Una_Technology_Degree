programa
{
	inclua biblioteca Matematica --> mat

	funcao inicio()
	{
		inteiro opcao = -1

		enquanto (opcao != 0)
		{
			escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			escreva("                MENU DE ÁREAS                  \n")
			escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			escreva("1) Calcular Área do Círculo\n")
			escreva("2) Calcular Área do Retângulo\n")
			escreva("3) Calcular Área do Triângulo\n")
			escreva("0) Sair\n")
			escreva("-----------------------------------------------\n")
			escreva("Escolha uma opção: ")
			leia(opcao)
			escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

			escolha (opcao)
			{
				caso 1:
					calcularAreaCirculo()
					pare
				caso 2:
					calcularAreaRetangulo()
					pare
				caso 3:
					calcularAreaTriangulo()
					pare
				caso 0:
					escreva("Programa encerrado. Até mais!\n")
					pare
				caso contrario:
					escreva("Opção inválida! Tente novamente.\n")
			}
		}
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	funcao real lerMedidaPositiva(cadeia texto)
	{
		real valor
		faca {
			escreva(texto)
			leia(valor)
			se (valor <= 0) {
				escreva("Erro: O valor deve ser maior que zero!\n")
			}
		} enquanto (valor <= 0)
		retorne valor
	}

	funcao calcularAreaCirculo()
	{
		real raio, area
		escreva("CALCULAR ÁREA DO CÍRCULO\n")
		raio = lerMedidaPositiva("Digite o raio do círculo: ")
		
		area = mat.PI * mat.potencia(raio, 2.0)
		
		escreva("A área do círculo é: ", mat.arredondar(area, 2), "\n")
	}

	funcao calcularAreaRetangulo()
	{
		real base, altura, area
		escreva("CALCULAR ÁREA DO RETÂNGULO\n")
		base = lerMedidaPositiva("Digite a base do retângulo: ")
		altura = lerMedidaPositiva("Digite a altura do retângulo: ")
		
		area = base * altura
		
		escreva("A área do retângulo é: ", mat.arredondar(area, 2), "\n")
	}

	funcao calcularAreaTriangulo()
	{
		real base, altura, area
		escreva("CALCULAR ÁREA DO TRIÂNGULO\n")
		base = lerMedidaPositiva("Digite a base do triângulo: ")
		altura = lerMedidaPositiva("Digite a altura do triângulo: ")
		
		area = (base * altura) / 2
		
		escreva("A área do triângulo é: ", mat.arredondar(area, 2), "\n")
	}
}

/*
Crie um menu que permita calcular a área de um círculo, de um retângulo ou de um triângulo. Inclua também 
a opção 0 para encerrar. 
Implemente uma função para cada cálculo, valide medidas positivas e repita o menu até que o usuário 
escolha sair. 
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 824; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */