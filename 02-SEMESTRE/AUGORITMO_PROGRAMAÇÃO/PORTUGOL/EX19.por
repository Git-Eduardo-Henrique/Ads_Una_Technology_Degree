programa
{
	
	funcao inicio()
	{
		inteiro num, soma, cont

		soma = 0
		para (cont=1; cont <= 5; cont++) {
			escreva("Digite o ", cont, "° numero: ")
			leia(num)

			soma = soma + num
		}

		escreva("===========================================\n")
		escreva("A soma dos numeros é: ", soma)
		escreva("\n===========================================")

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 367; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */