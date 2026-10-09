print("\033[34m", "=-" * 30, "\033[m")

for cont in range(1, 21):
    if cont % 2 == 0:
        print(f"\033[34m{cont}\033[m", end=" -> ")

print("\n\033[34m", "=-" * 30, "\033[m")

"""
1 SITUAÇÃO Uma lista deve exibir apenas os valores pares em determinado intervalo.
2 DADOS DO PROBLEMA intervalo de 1 a 20
3 PERGUNTA Mostre os números pares entre 1 e 20
"""