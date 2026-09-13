programa
{
	
	funcao inicio()
	{
		inteiro quant, cont, valor1, valor2, soma

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		escreva("Digite a quantidade ( entre 2 e 30 ): ")
		leia(quant)

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		se ( quant >= 2 e quant <= 30 ){

			valor1 = 0
			valor2 = 1

			escreva(valor1, " , ", valor2, " , ")

			para (cont = 0; cont <= quant-2; cont++){
				soma = valor1 + valor2
				valor1 = valor2
				valor2 = soma

				se (cont < quant-2){
					escreva(soma, " , ")
				} senao {
					escreva(soma, "\n")
				}
			}
			
		} senao {
			escreva("Número inválido!!!\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
	}
	/*
	Solicite uma quantidade N entre 2 e 30 e apresente os N primeiros termos da 
	sequência de Fibonacci, iniciando em 0 e 1.

	Cada novo termo deve ser obtido pela soma dos dois termos anteriores.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 641; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */