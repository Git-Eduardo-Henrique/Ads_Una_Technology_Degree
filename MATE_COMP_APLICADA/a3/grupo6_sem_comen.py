def grupo6(tabuleiro, meu_id):
    adv_id = 1 if meu_id == 2 else 2 

    direcoes = [
        (0, 1),
        (1, 0),
        (1, 1),
        (1, -1)
    ]

    melhor_posicao = None 
    melhor_pontuacao = -1 

    def avaliar_casa(linha, coluna): 
        pontuacao = 0 

        distancia_centro = abs(linha - 2.5) + abs(coluna - 2.5) 

        pontuacao += (10 - distancia_centro)

        for dl, dc in direcoes:
            for inicio in range(-3, 1): 

                minhas_janela = 0
                adv_janela = 0
                vazias = 0
                valida = True 

                for i in range(4): 

                    l = linha + (inicio + i) * dl 
                    c = coluna + (inicio + i) * dc
                    if not (0 <= l < 6 and 0 <= c < 6): 
                        valida = False
                        break

                    valor = tabuleiro[l][c] 

                    if l == linha and c == coluna: 
                        valor = meu_id

                    if valor == meu_id: 
                        minhas_janela += 1
                    elif valor == adv_id: 
                        adv_janela += 1
                    else:
                        vazias += 1 

                if not valida: 
                    continue

                if minhas_janela == 4: 
                    pontuacao += 100000
                elif minhas_janela == 3 and adv_janela == 0: 
                    pontuacao += 5000
                elif minhas_janela == 2 and adv_janela == 0:
                    pontuacao += 500

                if adv_janela == 3 and minhas_janela == 1:
                    pontuacao += 20000
                elif adv_janela == 2 and minhas_janela == 1:
                    pontuacao += 1000

                if (dl, dc) in [(1, 1), (1, -1)]: 
                    if minhas_janela >= 2: 
                        pontuacao += 300

                    if minhas_janela >= 3:
                        pontuacao += 2000

        return pontuacao

    for linha in range(6):
        for coluna in range(6):

            if tabuleiro[linha][coluna] != 0: 
                continue

            pontos = avaliar_casa(linha, coluna) 

            if pontos > melhor_pontuacao: 
                melhor_pontuacao = pontos
                melhor_posicao = [linha, coluna]

    return melhor_posicao

tabuleiro = [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,2,2,0],[0,0,0,0,0,0]]

print(grupo6(tabuleiro, 1))