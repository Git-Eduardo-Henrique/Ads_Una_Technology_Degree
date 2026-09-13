programa
{
	
	funcao inicio()
	{
		inteiro dia, mes, ano, trinta_d[4], trinta_um_d[7], cont
		logico veri_dia, veri_mes, veri_ano

		veri_mes = falso
		veri_dia = falso
		veri_ano = falso

		trinta_d[0] = 4
		trinta_d[1] = 6
		trinta_d[2] = 9
		trinta_d[3] = 11
		trinta_um_d[0] = 1
		trinta_um_d[1] = 3
		trinta_um_d[2] = 5
		trinta_um_d[3] = 7
		trinta_um_d[4] = 8
		trinta_um_d[5] = 10
		trinta_um_d[6] = 12
		
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Digite o dia: ")
		leia(dia)
		escreva("Digite o mês: ")
		leia(mes)
		escreva("Digite o ano: ")
		leia(ano)
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		se ( mes >= 1 e mes <= 12 ){
			veri_mes = verdadeiro
		}
		se ( ano >= 0 ){
			veri_ano = verdadeiro
		}
		se ( dia > 0 ){
			se ( dia <= 28 ) {
				veri_dia = verdadeiro
			} senao se ( dia == 29 ) {
				se ( mes == 2 ){
					se ((ano % 4 == 0 e ano % 100 != 0) ou ano % 400 == 0){
						veri_dia = verdadeiro
					}
				}
			} senao se ( dia == 30 ){
				para ( cont = 0; cont < 4; cont++){
					se ( mes == trinta_d[cont] ){
						veri_dia = verdadeiro
					}
				}
			} senao se ( dia == 31 ){
				para ( cont = 0; cont < 7; cont++){
					se ( mes == trinta_um_d[cont] ){
						veri_dia = verdadeiro
					}
				}
			}
		}
		

		se ( veri_dia e veri_mes e veri_ano ){
			escreva("A data ", dia, "/", mes, "/", ano, " é uma data válida\n")
		} senao {
			escreva("A data ", dia, "/", mes, "/", ano, " NÃO existe!!\n")
		}

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	/*
	Solicite dia, mês e ano. Verifique se a data existe, considerando a quantidade de dias de cada mês e anos 
	bissextos. 
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 769; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */