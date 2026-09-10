programa
{
	
	funcao inicio()
	{
		inteiro ano

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Digite o ano: ")
		leia(ano)
		
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		
		se ( ano % 400 == 0 ou (ano % 4 == 0 e ano % 100 != 0)){
			escreva("o ano ", ano, " é bissexto!\n")
		} senao {
			escreva("o ano ", ano, " NÃO é bissexto!\n")
		}
		
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
	}
	/*
	Solicite um ano e informe se ele é bissexto.

	· anos divisíveis por 400 são bissextos;
	
	· anos divisíveis por 4, mas não por 100, também são bissextos;
	
	· os demais anos não são bissextos.
	
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 648; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */