programa
{
	
	funcao inicio()
	{
		inteiro num

		escreva("Digite um numero: ")
		leia(num)

		escreva("===========================================\n")

		se ( num > 0 ) {
			escreva("seu numero é: POSITIVO\n")
		} senao se ( num == 0 ) {
			escreva("seu numero é: IGUAL A ZERO\n")
		} senao {
			escreva("seu numero é: NEGATIVO\n")
		}

		escreva("===========================================")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */