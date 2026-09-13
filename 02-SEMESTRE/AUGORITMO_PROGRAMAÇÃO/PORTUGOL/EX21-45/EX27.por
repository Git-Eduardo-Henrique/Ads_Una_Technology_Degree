programa
{
	
	funcao inicio()
	{
		inteiro nota, tentativa
		
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		tentativa = 0
		
		enquanto (verdadeiro){
			escreva("Digite uma nota entre 0 e 10: ")
			leia(nota)

			se (nota >= 0 e nota <= 10){
				escreva("Nota ", nota, " válida! numéro de tentativa inválidas: ", tentativa, "\n")
				escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

				pare
			}

			escreva("tentativa inváldia! tente novamente\n")
			escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			
			tentativa += 1
		}
	}

	/*
	Solicite uma nota e repita a leitura enquanto o valor estiver fora do intervalo de 0 a 10.

	Quando o usuário informar um valor válido, apresente a nota aceita e a quantidade de tentativas inválidas.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */