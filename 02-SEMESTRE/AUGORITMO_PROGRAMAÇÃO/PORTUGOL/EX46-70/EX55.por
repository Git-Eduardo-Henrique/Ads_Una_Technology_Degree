programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// Função que verifica se um número é perfeito e exibe seus divisores
	funcao logico ehNumeroPerfeito(inteiro numero)
	{
		inteiro i
		inteiro somaDivisores = 0

		escreva("Divisores próprios de ", numero, ": ")

		// Percorre de 1 até número/2 (nenhum divisor próprio excede a metade do número)
		para (i = 1; i <= numero / 2; i++)
		{
			se (numero % i == 0)
			{
				escreva(i, " ")
				somaDivisores = somaDivisores + i
			}
		}

		escreva("\n")
		linha()
		escreva("Soma dos divisores próprios: ", somaDivisores, "\n")

		// Retorna verdadeiro se a soma for igual ao número
		retorne (somaDivisores == numero)
	}

	funcao inicio()
	{
		inteiro numero
		logico perfeito

		linha()
		escreva("     VERIFICADOR DE NÚMERO PERFEITO           \n")
		linha()

		// Validação para garantir um número inteiro e positivo
		faca
		{
			escreva("Digite um número inteiro e positivo: ")
			leia(numero)

			se (numero <= 0)
			{
				escreva("Erro: O número deve ser maior que zero!\n")
			}
		} enquanto (numero <= 0)

		linha()

		// Executa a verificação
		perfeito = ehNumeroPerfeito(numero)

		linha()

		se (perfeito)
		{
			escreva("RESULTADO: O número ", numero, " É PERFEITO!\n")
		}
		senao
		{
			escreva("RESULTADO: O número ", numero, " NÃO É PERFEITO!\n")
		}

		linha()
	}
}
/*
Solicite um inteiro positivo e determine se ele é perfeito, isto é, igual à soma de seus divisores positivos 
menores que ele. Liste os divisores encontrados. 
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 973; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */