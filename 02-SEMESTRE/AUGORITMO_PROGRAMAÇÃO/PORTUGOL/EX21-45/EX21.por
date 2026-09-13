programa
{
	
	funcao inicio()
	{
		real compra, desc, total
	
		escreva("Digite o valor total da compra: ")
		leia(compra)

		se (compra < 100){
			desc = 0.0
		} senao se (compra >= 100 e compra <= 299.99){
			desc = 0.05
		} senao {
			desc = 0.1
		}

		total = compra - compra * desc

		escreva("==================================\n")
		escreva("Compra: R$", compra, " | Desconto: ", desc * 100, "% | Total a pagar: R$", total)
	}

	/*
	Solicite o valor total de uma compra e calcule o desconto conforme a 
	faixa informada:
valor menor que R$ 100,00: sem desconto;
valor entre R$ 100,00 e R$ 299,99: 5% de desconto;
valor a partir de R$ 300,00: 10% de desconto.
Apresente o valor original, o desconto e o total a pagar.
Objetivo: Aplicar condições encadeadas em um problema financeiro.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 341; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */