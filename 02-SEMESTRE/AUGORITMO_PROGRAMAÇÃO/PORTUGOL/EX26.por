programa
{
	
	funcao inicio()
	{
		inteiro senha, tentativa
		
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		para (tentativa = 1; tentativa <= 3; tentativa++){
			escreva("Digite a senha ( tentativa ", tentativa, " ): ")
			leia(senha)

			se (senha == 1234 ){
				escreva("Senha correta! | numero de tentativas: ", tentativa ,"\n")
				escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
				pare
			} senao se ( tentativa < 3 ) {
				escreva("Senha incorreta! tente novamente\n")
				escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			} senao {
				escreva("Senha incorreta! Sem mais tentativas\n")
				escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			}
		}
		
	}
	/*
	 * Considere a senha correta 1234. Solicite a senha do usuário e permita no máximo três tentativas.

Ao acertar, apresente “Acesso autorizado” e encerre a repetição. Após três erros, apresente “Acesso bloqueado”.
	
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 939; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */