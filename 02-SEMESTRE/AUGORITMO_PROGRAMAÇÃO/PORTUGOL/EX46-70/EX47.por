programa
{
	
	funcao inicio()
	{
		real kwh, valor_kwh_100, valor_kwh_200, valor_kwh_ac200, conta

		valor_kwh_100 = 0.9
		valor_kwh_200 = 1.0
		valor_kwh_ac200 = 1.2
	
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Digite consumo mensal (KWH): ")
		leia(kwh)

		se (kwh <= 100){
			conta = kwh * valor_kwh_100
		} senao se (kwh > 100 e kwh <= 200){
			conta = kwh * valor_kwh_200
		} senao {
			conta = kwh * valor_kwh_ac200
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Consumo mensal: ", kwh, " kWh\n")
		escreva("Até 100kWh: R$", valor_kwh_100, " por kWh\n")
		escreva("Até 200kWh: R$", valor_kwh_200, " por kWh\n")
		escreva("Acima dos 200kWh: R$", valor_kwh_ac200, " por kWh\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Total da conta: R$", conta, "\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		
	}

	/*
	Solicite o consumo mensal em kWh e calcule o valor da conta por faixas cumulativas definidas pelo 
	professor. Apresente consumo, valor de cada faixa e total.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 340; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */