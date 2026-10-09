num = 7

print("\033[34m", "=-" * 30, "\033[m")

for cont in range(1, 11):
    print(f"\033[34m{num}\033[m x \033[34m{cont}\033[m = \033[34m{num * cont}\033[m")

print("\033[34m", "=-" * 30, "\033[m")

"""
1 SITUAÇÃO Um recurso de estudo precisa gerar a tabuada de um número.
2 DADOS DO PROBLEMA numero = 7 multiplicadores de 1 a 10
3 PERGUNTA Apresente a tabuada completa do número informado.
"""