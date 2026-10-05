programa
{
	inclua biblioteca Texto --> t

	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// Função que valida a cadeia e exibe os critérios não atendidos
	// Retorna verdadeiro se todos os critérios forem cumpridos
	funcao logico validarCadeia(cadeia textoEntrada, inteiro tamanhoMinimo)
	{
		inteiro tamanho = t.numero_caracteres(textoEntrada)
		caracter c
		inteiro i

		logico temMaiuscula = falso
		logico temMinuscula = falso
		logico temNumero = falso
		logico temEspecial = falso
		logico atendeTamanho = (tamanho >= tamanhoMinimo)

		// Percorre cada caractere da cadeia para classificar
		para (i = 0; i < tamanho; i++)
		{
			c = t.obter_caracter(textoEntrada, i)

			// Verifica se é letra maiúscula
			se (c >= 'A' e c <= 'Z')
			{
				temMaiuscula = verdadeiro
			}
			// Verifica se é letra minúscula
			senao se (c >= 'a' e c <= 'z')
			{
				temMinuscula = verdadeiro
			}
			// Verifica se é número
			senao se (c >= '0' e c <= '9')
			{
				temNumero = verdadeiro
			}
			// Qualquer outro caractere visível é tratado como especial
			senao
			{
				temEspecial = verdadeiro
			}
		}

		// Verificação dos resultados e relatório de pendências
		logico tudoValido = atendeTamanho e temMaiuscula e temMinuscula e temNumero e temEspecial

		escreva("RELATÓRIO DE VALIDAÇÃO:\n")
		linha()

		se (tudoValido)
		{
			escreva("Sucesso: A cadeia atende a TODOS os critérios de segurança!\n")
		}
		senao
		{
			escreva("Atenção: Os seguintes critérios NÃO foram atendidos:\n")

			se (nao atendeTamanho)
			{
				escreva("- Tamanho insuficiente (possui ", tamanho, " caracteres, mínimo exigido: ", tamanhoMinimo, ")\n")
			}
			se (nao temMaiuscula)
			{
				escreva("- Ausência de letra maiúscula (A-Z)\n")
			}
			se (nao temMinuscula)
			{
				escreva("- Ausência de letra minúscula (a-z)\n")
			}
			se (nao temNumero)
			{
				escreva("- Ausência de número (0-9)\n")
			}
			se (nao temEspecial)
			{
				escreva("- Ausência de caractere especial (ex: @, #, $, !, %, etc.)\n")
			}
		}

		retorne tudoValido
	}

	funcao inicio()
	{
		cadeia entrada
		inteiro tamMin = 8
		logico resultado

		linha()
		escreva("      VALIDADOR DE CADEIA DE CARACTERES        \n")
		linha()

		escreva("Digite a texto/senha a ser analisado: ")
		leia(entrada)

		linha()

		// Executa a função de validação (definindo tamanho mínimo como 8)
		resultado = validarCadeia(entrada, tamMin)

		linha()
	}
}
/*
Crie uma função que receba uma cadeia e verifique tamanho mínimo, presença de letra maiúscula, 
minúscula, número e caractere especial. Informe quais critérios não foram atendidos.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2475; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */