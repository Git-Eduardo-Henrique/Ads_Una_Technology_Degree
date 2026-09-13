programa
{
	
	funcao inicio()
	{
		inteiro senha, tentativas, digitado

		senha = 67
		
	
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Tente acertar a senha! você tem 7 tentativas!\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		para ( tentativas = 1; tentativas <= 7; tentativas++){
			escreva("Digite a senha ( tentativa ", tentativas, " ): ")
			leia(digitado)

			se ( digitado == senha ){
				escreva("Acertou! a senha é ", senha, "\n")
				pare
			} senao {
				se ( digitado > senha ){
					escreva("Senha incorreta! Dica: valor digitado é maior\n")
				} senao {
					escreva("Senha incorreta! Dica: valor digitado é menor\n")
				}
			}

			se (tentativas == 7){
				escreva("Sem mais tentativas! que pena :(\n")
			}
		}
		
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
	/*
	Defina um número secreto de 1 a 100. Permita até sete tentativas e informe, a cada erro, se o palpite é 
	maior ou menor. Ao final, apresente o resultado e o número de tentativas.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 850; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */