programa
{
	
	funcao inicio()
	{
		inteiro p1, p2

		p1 = 0
		p2 = 0
	
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("=-=-=-=-=-= PEDRA PAPEL E TESOURA =-=-=-=-=-=\n")
		escreva("Jogador 1: \n")
		escreva("1 - Pedra | 2 - Papel | 3 - Tesoura \n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		enquanto ( p1 < 1 ou p1 > 3){
			escreva("Digite a opção selecionada: ")
			leia(p1)
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Jogador 2: \n")

		enquanto ( p2 < 1 ou p2 > 3){
			escreva("Digite a opção selecionada: ")
			leia(p2)
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		se (p1 == 1 e p2 == 1){
			escreva("Jogador 1 escolheu pedra e jogador 2 escolheu pedra\nEMPATE!!\n")
		} senao se (p1 == 1 e p2 == 2){
			escreva("Jogador 1 escolheu pedra e jogador 2 escolheu papel\nJOGADOR 2 VENCEU!!\n")
		} senao se (p1 == 1 e p2 == 3){
			escreva("Jogador 1 escolheu pedra e jogador 2 escolheu tesoura\nJOGADOR 1 VENCEU!!\n")
		} senao se (p1 == 2 e p2 == 1){
			escreva("Jogador 1 escolheu papel e jogador 2 escolheu pedra\nJOGADOR 1 VENCEU!!\n")
		} senao se (p1 == 2 e p2 == 2){
			escreva("Jogador 1 escolheu papel e jogador 2 escolheu papel\nEMPATE!!\n")
		} senao se (p1 == 2 e p2 == 3){
			escreva("Jogador 1 escolheu papel e jogador 2 escolheu tesoura\nJOGADOR 2 VENCEU!!\n")
		} senao se (p1 == 3 e p2 == 1){
			escreva("Jogador 1 escolheu tesoura e jogador 2 escolheu pedra\nJOGADOR 2 VENCEU!!\n")
		} senao se (p1 == 3 e p2 == 2){
			escreva("Jogador 1 escolheu tesoura e jogador 2 escolheu papel\nJOGADOR 1 VENCEU!!\n")
		} senao se (p1 == 3 e p2 == 3){
			escreva("Jogador 1 escolheu tesoura e jogador 2 escolheu tesoura\nEMPATE!!\n")
		}
		
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
	/*
	Pedra, papel e tesoura 
	Leia a escolha de dois jogadores, valide as opções e informe o vencedor ou empate. Use códigos 
	numéricos e escolha/caso. 
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 518; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */