programa
{
	
	funcao inicio()
	{
		inteiro opc

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("=-=-=-=-=-=-=-=-= MENU TOP! =-=-=-=-=-=-=-=\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("1 - Financeiro\n")
		escreva("2 - Suporte técnico\n")
		escreva("3 - Vendas\n")
		escreva("4 - Cancelamento\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		escreva("Opção selecionada: ")
		leia(opc)

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
			
		se ( opc >= 1 e opc < 5 ){
			
			se ( opc == 1 ){
				escreva("Opção selecionada: 1 - Financeiro\n")
			} senao se ( opc == 2 ){
				escreva("Opção selecionada: 2 - Suporte técnico\n")
			} senao se ( opc == 3 ){
				escreva("Opção selecionada: 3 - Vendas\n")
			} senao {
				escreva("Opção selecionada: 4 - Cancelamento\n")
			}
			
		} senao {
			escreva("Opção inválida!\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	/*
	 * Apresente um menu e solicite uma opção numérica:

	· 1 — Financeiro;
	
	· 2 — Suporte técnico;
	
	· 3 — Vendas;
	
	· 4 — Cancelamento.
	
	· Informe o setor escolhido ou exiba “Opção inválida” para qualquer outro valor.
	
	Dica: Utilize a estrutura escolha/caso.
	
	Objetivo: Selecionar uma ação entre várias alternativas.
	
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 653; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */