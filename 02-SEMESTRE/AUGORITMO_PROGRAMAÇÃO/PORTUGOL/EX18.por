programa
{
	
	funcao inicio()
	{
		inteiro cont, num

		escreva("Digite um numero para ver sua tabuada: ")
		leia(num)

		escreva("===========================================\n")

		para (cont=1; cont <= 10 ; cont++) {
			escreva(num, " x ", cont, " = ", num*cont, "\n")
		}

		escreva("===========================================")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 209; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */