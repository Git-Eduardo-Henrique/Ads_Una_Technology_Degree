programa
{
	
	funcao inicio()
	{
		inteiro nota, cont, soma_media, quant_cinco, quant_um_dois, porcentagem
		real media, pessoas, quant_qua_cinco

		soma_media = 0
		quant_cinco = 0
		quant_um_dois = 0
		quant_qua_cinco = 0.0

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Digite o número de alunos: ")
		leia(pessoas)

		para (cont = 1; cont <= pessoas; cont++){

			enquanto (verdadeiro) {
				escreva("Digite a nota do ", cont, "° aluno:")
				leia(nota)
	
				se ( nota >= 1 e nota <= 5) {
					soma_media += nota

					se ( nota == 5 ){
						quant_cinco += 1
						quant_qua_cinco += 1
					} senao se ( nota == 4) {
						quant_qua_cinco += 1
					}
		
					se ( nota == 1 ou nota == 2 ){
						quant_um_dois += 1
					}

					pare
				} senao {
					escreva("Nota inválida! digite novamente\n")
					escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
				}
			}
		}

		media = soma_media / pessoas
		porcentagem = quant_qua_cinco / pessoas * 100

		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("ESTATISTICAS DA TURMA:\n")
		escreva("média da turma: ", media, "\n")
		escreva("quantidade de notas 5: ", quant_cinco, "\n")
		escreva("quantidade de notas entre 1 e 2: ", quant_um_dois, "\n")
		escreva("porcentagem de notas entre 4 e 5: ", porcentagem, "%\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	/*
	Solicite a quantidade de participantes. Para cada pessoa, leia uma nota inteira de 1 a 5 e repita a leitura se a nota for inválida.
	
	Ao final, apresente:
	
	· a média das avaliações;
	
	· a quantidade de notas 5;
	
	· a quantidade de notas 1 ou 2;
	
	· o percentual de participantes que atribuíram nota 4 ou 5.
	*/
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 519; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */