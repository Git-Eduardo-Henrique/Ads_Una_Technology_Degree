programa
{
	
	funcao inicio()
	{
		inteiro media

		escreva("Digite a média de nota: ")
		leia(media)

		escreva("======================================================\n")

		se ( media >= 7 ) {
			escreva("Sua média é: ", media, " você está APROVADO\n")
		} senao se ( media >= 5 e media < 7 ) {
			escreva("Sua média é: ", media, " você está de RECUPERAÇÃO\n")
		} senao {
			escreva("Sua média é: ", media, " você está REPROVADO\n")
		}
		
		escreva("======================================================")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 523; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */