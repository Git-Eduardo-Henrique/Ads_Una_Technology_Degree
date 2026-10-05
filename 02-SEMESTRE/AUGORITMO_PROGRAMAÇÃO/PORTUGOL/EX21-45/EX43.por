programa
{
	funcao inicio()
	{
		inteiro voto = -1
		inteiro c1 = 0, c2 = 0, c3 = 0, c4 = 0, branco = 0, nulo = 0, total_votos = 0
		inteiro total_validos = 0, maior_votos = 0
		real perc_branco = 0.0, perc_nulo = 0.0
		cadeia vencedor = ""
		logico empate = falso

		// Laço para registro dos votos
		enquanto (voto != 0)
		{
			escreva("Digite o código do voto (1-4: Candidatos | 5: Branco | 6: Nulo | 0: Encerrar): ")
			leia(voto)

			escolha (voto)
			{
				caso 1: c1 = c1 + 1 total_votos = total_votos + 1 pare
				caso 2: c2 = c2 + 1 total_votos = total_votos + 1 pare
				caso 3: c3 = c3 + 1 total_votos = total_votos + 1 pare
				caso 4: c4 = c4 + 1 total_votos = total_votos + 1 pare
				caso 5: branco = branco + 1 total_votos = total_votos + 1 pare
				caso 6: nulo = nulo + 1 total_votos = total_votos + 1 pare
				caso 0: pare
				caso contrario: escreva("Código inválido! Tente novamente.\n")
			}
		}

		// Cálculos matemáticos
		total_validos = c1 + c2 + c3 + c4

		se (total_votos > 0)
		{
			perc_branco = (branco * 100.0) / total_votos
			perc_nulo = (nulo * 100.0) / total_votos
		}

		// Verificação do vencedor e tratamento de empate
		// Candidato 1
		se (c1 > maior_votos) { maior_votos = c1 vencedor = "Candidato 1" empate = falso }
		senao se (c1 == maior_votos e maior_votos > 0) { vencedor = vencedor + " e Candidato 1" empate = verdadeiro }

		// Candidato 2
		se (c2 > maior_votos) { maior_votos = c2 vencedor = "Candidato 2" empate = falso }
		senao se (c2 == maior_votos e maior_votos > 0) { vencedor = vencedor + " e Candidato 2" empate = verdadeiro }

		// Candidato 3
		se (c3 > maior_votos) { maior_votos = c3 vencedor = "Candidato 3" empate = falso }
		senao se (c3 == maior_votos e maior_votos > 0) { vencedor = vencedor + " e Candidato 3" empate = verdadeiro }

		// Candidato 4
		se (c4 > maior_votos) { maior_votos = c4 vencedor = "Candidato 4" empate = falso }
		senao se (c4 == maior_votos e maior_votos > 0) { vencedor = vencedor + " e Candidato 4" empate = verdadeiro }

		// Exibição dos resultados formatados
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("RESULTADO DA VOTAÇÃO\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Candidato 1: ", c1, " voto(s)\n")
		escreva("Candidato 2: ", c2, " voto(s)\n")
		escreva("Candidato 3: ", c3, " voto(s)\n")
		escreva("Candidato 4: ", c4, " voto(s)\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
		escreva("Total de votos válidos: ", total_validos, "\n")
		escreva("Percentual de votos em branco: ", perc_branco, "%\n")
		escreva("Percentual de votos nulos: ", perc_nulo, "%\n")
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")

		// Exibição do resultado final (vencedor ou empate)
		se (total_validos == 0)
		{
			escreva("Não houve votos válidos para determinar um vencedor.\n")
		}
		senao se (empate)
		{
			escreva("Houve um EMPATE entre: ", vencedor, " com ", maior_votos, " voto(s) cada.\n")
		}
		senao
		{
			escreva("VENCEDOR: ", vencedor, " com ", maior_votos, " voto(s).\n")
		}
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}
}

/*
Registre votos até que seja informado o código 0. Utilize os códigos: 
• 1 a 4 — candidatos; 
• 5 — voto em branco; 
• 6 — voto nulo. 
• Apresente os votos de cada candidato, os percentuais de votos brancos e nulos, o total de votos válidos e 
o vencedor. Trate também a possibilidade de empate.
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 944; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */