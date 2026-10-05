programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// Função que calcula o MDC usando o Algoritmo de Euclides
	funcao inteiro calcularMDC(inteiro a, inteiro b)
	{
		inteiro resto

		faca
		{
			resto = a % b
			a = b
			b = resto
		} enquanto (resto != 0)

		retorne a
	}

	// Função que calcula o MMC a partir do MDC
	// Formula: MMC(a, b) = (|a * b|) / MDC(a, b)
	funcao inteiro calcularMMC(inteiro a, inteiro b, inteiro mdc)
	{
		retorne (a * b) / mdc
	}

	funcao inicio()
	{
		inteiro num1, num2, mdc, mmc

		linha()
		escreva("      CÁLCULO DE MDC E MMC (EUCLIDES)          \n")
		linha()

		// Validação para o primeiro número ser estritamente positivo
		faca
		{
			escreva("Digite o primeiro número inteiro e positivo: ")
			leia(num1)

			se (num1 <= 0)
			{
				escreva("Erro: O número deve ser maior que zero!\n")
			}
		} enquanto (num1 <= 0)

		// Validação para o segundo número ser estritamente positivo
		faca
		{
			escreva("Digite o segundo número inteiro e positivo: ")
			leia(num2)

			se (num2 <= 0)
			{
				escreva("Erro: O número deve ser maior que zero!\n")
			}
		} enquanto (num2 <= 0)

		linha()

		// Cálculo do MDC e MMC
		mdc = calcularMDC(num1, num2)
		mmc = calcularMMC(num1, num2, mdc)

		// Exibição dos resultados
		escreva("RESULTADOS:\n")
		escreva("Número 1: ", num1, "\n")
		escreva("Número 2: ", num2, "\n")
		linha()
		escreva("MDC(", num1, ", ", num2, ") = ", mdc, "\n")
		escreva("MMC(", num1, ", ", num2, ") = ", mmc, "\n")
		linha()
	}
}
/*
Solicite dois inteiros positivos e calcule o MDC pelo algoritmo de Euclides. Apresente também o MMC 
calculado a partir do MDC.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1213; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */