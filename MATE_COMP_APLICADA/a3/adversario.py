import random

def grupo2(tabuleiro, meu_id):
    casas_livres = []

    for linha in range(len(tabuleiro)):
        for coluna in range(len(tabuleiro[linha])):
            if tabuleiro[linha][coluna] == 0:
                casas_livres.append((linha, coluna))

    if casas_livres:
        linha, coluna = random.choice(casas_livres)
        tabuleiro[linha][coluna] = meu_id

    return tabuleiro