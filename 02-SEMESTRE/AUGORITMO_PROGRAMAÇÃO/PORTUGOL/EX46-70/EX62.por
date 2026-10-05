programa
{
	// Função para exibir a linha divisória padronizada
	funcao linha()
	{
		escreva("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n")
	}

	// Procedimento para exibir o tabuleiro formatado
	funcao exibirTabuleiro(caracter tab[][])
	{
		inteiro l, c
		escreva("             TABULEIRO (JOGO DA VELHA)         \n")
		linha()
		escreva("               C1    C2    C3                  \n")

		para (l = 0; l < 3; l++)
		{
			escreva("    L1 (Linha ", l + 1, "): ")
			para (c = 0; c < 3; c++)
			{
				escreva(" ", tab[l][c], " ")
				se (c < 2)
				{
					escreva("|")
				}
			}
			escreva("\n")

			se (l < 2)
			{
				escreva("                ---+---+---\n")
			}
		}
		escreva("\n")
	}

	// Função para verificar se houve vencedor
	funcao logico checarVitoria(caracter tab[][], caracter jogador)
	{
		inteiro i

		// Checa linhas e colunas
		para (i = 0; i < 3; i++)
		{
			// Linhas
			se (tab[i][0] == jogador e tab[i][1] == jogador e tab[i][2] == jogador)
			{
				retorne verdadeiro
			}
			// Colunas
			se (tab[0][i] == jogador e tab[1][i] == jogador e tab[2][i] == jogador)
			{
				retorne verdadeiro
			}
		}

		// Diagonal principal
		se (tab[0][0] == jogador e tab[1][1] == jogador e tab[2][2] == jogador)
		{
			retorne verdadeiro
		}

		// Diagonal secundária
		se (tab[0][2] == jogador e tab[1][1] == jogador e tab[2][0] == jogador)
		{
			retorne verdadeiro
		}

		retorne falso
	}

	funcao inicio()
	{
		caracter tabuleiro[3][3]
		caracter jogadorAtual = 'X'
		inteiro l, c, lin, col
		inteiro jogadas = 0
		logico jogadaValida, venceu = falso

		// Inicialização do tabuleiro com espaços em branco (' ')
		para (l = 0; l < 3; l++)
		{
			para (c = 0; c < 3; c++)
			{
				tabuleiro[l][c] = ' '
			}
		}

		linha()
		escreva("              JOGO DA VELHA (3x3)              \n")

		// Loop principal do jogo
		faca
		{
			exibirTabuleiro(tabuleiro)
			linha()
			escreva("Vez do Jogador [", jogadorAtual, "]\n")

			// Validação da jogada (posição dentro dos limites e não ocupada)
			jogadaValida = falso
			faca
			{
				escreva("Informe a Linha (1 a 3): ")
				leia(lin)
				escreva("Informe a Coluna (1 a 3): ")
				leia(col)

				se (lin < 1 ou lin > 3 ou col < 1 ou col > 3)
				{
					escreva("Erro: Posição fora do tabuleiro! Tente novamente.\n")
				}
				senao se (tabuleiro[lin - 1][col - 1] != ' ')
				{
					escreva("Erro: Esta posição já está ocupada! Escolha outra.\n")
				}
				senao
				{
					jogadaValida = verdadeiro
				}
			} enquanto (nao jogadaValida)

			// Registra a jogada
			tabuleiro[lin - 1][col - 1] = jogadorAtual
			jogadas = jogadas + 1

			// Verifica se o jogador atual venceu
			venceu = checarVitoria(tabuleiro, jogadorAtual)

			linha()

			se (venceu)
			{
				exibirTabuleiro(tabuleiro)
				linha()
				escreva("PARABÉNS! O JOGADOR [", jogadorAtual, "] VENCEU O JOGO!\n")
				linha()
			}
			senao se (jogadas == 9)
			{
				exibirTabuleiro(tabuleiro)
				linha()
				escreva("EMPATE! O jogo terminou em VELHA (nenhum vencedor).\n")
				linha()
			}
			senao
			{
				// Alterna o jogador ('X' troca para 'O' e vice-versa)
				se (jogadorAtual == 'X')
				{
					jogadorAtual = 'O'
				}
				senao
				{
					jogadorAtual = 'X'
				}
			}

		} enquanto (nao venceu e jogadas < 9)
	}
}
/*
Implemente um tabuleiro 3 x 3 para dois jogadores. Alterne as jogadas, impeça posições ocupadas e 
identifique vitória em linhas, colunas ou diagonais, além de empate. 
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3255; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */