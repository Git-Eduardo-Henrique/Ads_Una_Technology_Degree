programa
{
	inclua biblioteca Texto --> t

	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	funcao inicio()
	{
		cadeia frase, fraseMinuscula
		caracter c
		inteiro i, tamanho

		inteiro totalCaracteres = 0
		inteiro totalVogais = 0
		inteiro totalConsoantes = 0
		inteiro totalDigitos = 0
		inteiro totalEspacos = 0
		inteiro totalPalavras = 0

		logico emPalavra = falso

		linha()
		escreva("        ANALISADOR DE FRASE E TEXTO            \n")
		linha()

		escreva("Digite uma frase: ")
		leia(frase)

		// Converte para minúsculas para ignorar diferenças entre maiúsculas e minúsculas
		fraseMinuscula = t.caixa_baixa(frase)
		tamanho = t.numero_caracteres(fraseMinuscula)
		totalCaracteres = tamanho

		para (i = 0; i < tamanho; i++)
		{
			c = t.obter_caracter(fraseMinuscula, i)

			// Contagem de Espaços
			se (c == ' ')
			{
				totalEspacos = totalEspacos + 1
				emPalavra = falso
			}
			senao
			{
				// Marca início de uma nova palavra
				se (nao emPalavra)
				{
					totalPalavras = totalPalavras + 1
					emPalavra = verdadeiro
				}

				// Contagem de Vogais
				se (c == 'a' ou c == 'e' ou c == 'i' ou c == 'o' ou c == 'u')
				{
					totalVogais = totalVogais + 1
				}
				// Contagem de Consoantes (letras de 'a' a 'z' exceto vogais)
				senao se (c >= 'a' e c <= 'z')
				{
					totalConsoantes = totalConsoantes + 1
				}
				// Contagem de Dígitos (números de '0' a '9')
				senao se (c >= '0' e c <= '9')
				{
					totalDigitos = totalDigitos + 1
				}
			}
		}

		linha()
		escreva("              RELATÓRIO DE ANÁLISE             \n")
		linha()
		escreva("Total de caracteres (com espaços): ", totalCaracteres, "\n")
		escreva("Quantidade de palavras: ", totalPalavras, "\n")
		escreva("Quantidade de vogais: ", totalVogais, "\n")
		escreva("Quantidade de consoantes: ", totalConsoantes, "\n")
		escreva("Quantidade de dígitos: ", totalDigitos, "\n")
		escreva("Quantidade de espaços: ", totalEspacos, "\n")
		linha()
	}
}
/*
Leia uma frase e apresente quantidade de caracteres, vogais, consoantes, dígitos, espaços e palavras. 
Ignore diferenças entre maiúsculas e minúsculas.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 435; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */