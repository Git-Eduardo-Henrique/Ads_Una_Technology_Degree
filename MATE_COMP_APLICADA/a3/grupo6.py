def grupo6(tabuleiro, meu_id):
    """
    O algoritmo:
    - Prioriza diagonais.
    - Defende sequências do adversário.
    - Valoriza casas centrais.
    """

    # grava qual o id do adversario baseado no nosso próprio
    adv_id = 1 if meu_id == 2 else 2 

    # Direções:
    # valores = deslocamento em linha, deslocamento em coluna = (dl, dc)
    # horizontal - (0, 1) 
    # vertical - (1, 0)
    # diagonal principal - (1, 1)
    # diagonal secundária - (1, -1) = -1 pois para diagonal pois se move em linha 
    # e vai diminuindo um em coluno para verificar as diagonais
    direcoes = [
        (0, 1),
        (1, 0),
        (1, 1),
        (1, -1)
    ]

    melhor_posicao = None # nenhuma pois ainda não foi decidida
    melhor_pontuacao = -1 # menos 1 para ser menor que a pontuação, poís ainda não foi dado pontos

    # --------------------------------------------------
    # Função que recebe cada casa e a avalia por pontos, a com mais pontos será a escolhida no final
    def avaliar_casa(linha, coluna): 
        pontuacao = 0 # valor inicial para a casa

        # calcula o quão longe a casa está do centro do tabuleiro
        # abs = transforma valores negativos em positivos, ex: -2 = 2
        # as casas centrais em 6x6 que são (2,2), (2,3), (3,2), (3,3) então 2.5 é o valor mais perto de 2 e 3
        distancia_centro = abs(linha - 2.5) + abs(coluna - 2.5) # ex casa: (2,2) = 2-2.5 + 2-2.5 = 1 ( 1 = casa bem próxima )

        pontuacao += (10 - distancia_centro) # faz casas perto do centro receberem mais pontos 

        # verifica cada direção
        # dl = deslocamento em linha, dc = deslocamento em coluna
        # verifica a horizontal, vertical e diagonais em volta da casa
        for dl, dc in direcoes:
            # simula as quatro casas de uma direção, como as 4 para a horizontal direita ou esquerda: 
            # ex: -3, -2, -1, 0, casa analisada
            # É graças a esse bloco que a IA consegue descobrir coisas como:
            """ "Se eu jogar aqui, fico com 3 em sequência."
            "Se eu jogar aqui, bloqueio 3 do adversário."
            "Se eu jogar aqui, completo 4 e ganho."""
            for inicio in range(-3, 1): 

                # valores para contar quanto de cada peça tem nesse intervalo
                minhas_janela = 0
                adv_janela = 0
                vazias = 0
                valida = True # começa valido mas pode ser mudado

                for i in range(4): # percore as 4 casas

                    #"Partindo da casa que estou avaliando, ande alguns passos na direção atual e 
                    # descubra qual posição do tabuleiro devo analisar."
                    # dl e dc define qual direção irá ir 
                    # com isso calcula uma casa ao lado da principal analisada até chegar na princial
                    # como retornar de primeira (2, 0) e depois até chegar em (2, 4)
                    l = linha + (inicio + i) * dl 
                    c = coluna + (inicio + i) * dc
                    if not (0 <= l < 6 and 0 <= c < 6): # caso saía do espaço do tabuleiro ele não irá analisar a casa
                        valida = False
                        break

                    valor = tabuleiro[l][c] # simula a jogada atual

                     # vai testar a jogada nessa casa caso não tenha sido marcada, sem mudar o tabuleiro real
                    if l == linha and c == coluna: # se já chegou na casa principal analisada, para marca-lá como nossa
                        valor = meu_id

                    if valor == meu_id: # se valor for casa marcada por nós, almenta o número
                        minhas_janela += 1
                    elif valor == adv_id: # se valor for igual ao adversário
                        adv_janela += 1
                    else:
                        vazias += 1 #  se for vazio 0

                if not valida: # se casa não for válida ( estiver forá do tabuleiro ) ele pula e não pontua
                    continue


                # ------------------------------
                # PRIORIDADE DE ATAQUE
                # vitória imediata
                if minhas_janela == 4: # se completar 4 para nós dá a pontuação máxima para escolher essa casa
                    pontuacao += 100000
                # se tiver 2 casas seguidas e adversário não tenha bloqueado
                elif minhas_janela == 3 and adv_janela == 0: 
                    pontuacao += 5000
                # se puder adicionar uma a sequencia, sem bloqueios
                elif minhas_janela == 2 and adv_janela == 0:
                    pontuacao += 500

                # ------------------------------
                # PRIORIDADE DE DEFESA
                # adiciona muitos pontos caso precise defender sequencia de 3 urgente
                if adv_janela == 3 and minhas_janela == 1:
                    pontuacao += 20000
                # adiciona pontos moderados para defender sequencia de 2, não tão urgente
                elif adv_janela == 2 and minhas_janela == 1:
                    pontuacao += 1000

                # ------------------------------
                # BÔNUS PARA DIAGONAIS
                if (dl, dc) in [(1, 1), (1, -1)]: # se direções forem em diagonal 
                    if minhas_janela >= 2: # se já tiver casas formando diagonal adiciona pontos 
                        pontuacao += 300

                    if minhas_janela >= 3: # com duas ou mais adiciona ainda mais pontos
                        pontuacao += 2000

        return pontuacao # retorno final da função, com os pontos da casa analisada

    # --------------------------------------------------
    # Avalia todas as casas vazias
    for linha in range(6):
        for coluna in range(6):

            if tabuleiro[linha][coluna] != 0: # se casa já foi marcada ele pula para analisar a próxima
                continue

            pontos = avaliar_casa(linha, coluna) # recebe quantos pontos a casa recebeu

            if pontos > melhor_pontuacao: # se for mais pontos do que todas já alisadas, irá escolher essa
                melhor_pontuacao = pontos
                melhor_posicao = [linha, coluna]

    return melhor_posicao

tabuleiro = [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,2,2,0],[0,0,0,0,0,0]]

print(grupo6(tabuleiro, 1))