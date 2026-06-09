from adversario import grupo2

def checar_casa(tabuleiro, id_casa): # retorna posições marcadas do id escolhido
    posicoes = []
    for linha in range(6):
        for colu in range(6):
            if tabuleiro[linha][colu] == id_casa:
                posicoes.append([linha, colu])
    return posicoes

def grupo1(tabuleiro, meu_id):
    # salva o id do adversario
    adv_id = int()
    if meu_id == 1:
        adv_id = 2
    else:
        adv_id = 1

    disp_0 = checar_casa(tabuleiro, 0) # casas disponiveis
    marcadas = checar_casa(tabuleiro, meu_id) # marcadas por nós
    adv = checar_casa(tabuleiro, adv_id) # marcadas pelo adversários

    print("=-=" * 30)
    print(disp_0)
    print("=-=" * 30)
    print(marcadas)
    print("=-=" * 30)
    print(adv)
    print("=-=" * 30)
    print("=-=" * 30)

    return tabuleiro

tabuleiro = [[1,0,0,0,0,0],
            [0,0,0,1,0,0],
            [0,0,0,0,0,0],
            [0,0,0,2,2,0],
            [0,0,0,0,0,0],
            [0,0,1,0,0,0]]

id_1 = 1
id_2 = 2


print(grupo1(tabuleiro, id_1))
print("=-=" * 30)

# tabuleiro = grupo2(tabuleiro, id_2)
# print(tabuleiro)
# tabuleiro = grupo1(tabuleiro, id_1)
# print(tabuleiro)
# tabuleiro = grupo2(tabuleiro, id_2)
# print(tabuleiro)
# tabuleiro = grupo1(tabuleiro, id_1)
# print(tabuleiro)
