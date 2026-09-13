programa
{
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		inteiro num, quo, resto, atual, tamanho, cont
		cadeia binario, n_binario

		num = 0
		
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		enquanto ( num <= 0 ) {
			escreva("Digite um numero para converter em binario: ")
			leia(num)
		}

		quo = -1
		binario = ""
		n_binario = ""
		atual = num
		
		enquanto ( quo != 0 ) {
			quo = atual / 2
			resto = atual % 2
			atual = quo

			binario += resto
		}

		tamanho = t.numero_caracteres(binario)

		para ( cont = tamanho - 1; cont >= 0; cont--) {
			n_binario += t.extrair_subtexto(binario, cont, cont+1)
		}

		escreva("Digitado: ", num, " | Em binário: ", n_binario, "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
	/*
	Solicite um inteiro não negativo e apresente sua representação binária sem utilizar função pronta de 
	conversão.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 449; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */