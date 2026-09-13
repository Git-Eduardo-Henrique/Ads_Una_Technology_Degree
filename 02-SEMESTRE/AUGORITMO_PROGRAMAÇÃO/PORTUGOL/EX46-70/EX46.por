programa
{
	
	funcao inicio()
	{
		inteiro saque, n100, n50, n20, n10, n5, n2

		saque = -1

		enquanto ( saque <= 0 ){
			escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			escreva("Digite um valor para sacar: R$")
			leia(saque)

			se ( saque <= 0 ) {
				escreva("Valor nulo ou negativo não permitido! tente novamente..\n")
			}

		}

		n100 = saque / 100
		n50 = saque / 50
		n20 = saque / 20
		n10 = saque / 10
		n5 = saque / 5
		n2 = saque / 2

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Total possível de notas 100: ", n100, "\n")
		escreva("Total possível de notas 50:  ", n50, "\n")
		escreva("Total possível de notas 20:  ", n20, "\n")
		escreva("Total possível de notas 10:  ", n10, "\n")
		escreva("Total possível de notas 5:   ", n5, "\n")
		escreva("Total possível de notas 2:   ", n2, "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		
	}
	/*
	Solicite um valor inteiro positivo para saque. Informe a menor quantidade possível de cédulas de R$ 100, 
	R$ 50, R$ 20, R$ 10, R$ 5 e R$ 2. Se o valor não puder ser composto com as cédulas disponíveis, apresente 
	uma mensagem explicativa.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 389; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */