num = 17

print("\033[34m", "=-" * 30, "\033[m")

if num % 2 == 0:
    print(f"O numero \033[34m{num}\033[m é um numero \033[34mpar!\033[m")
else:
    print(f"O numero \033[34m{num}\033[m é um numero \033[34mimpar!\033[m")

print("\033[34m", "=-" * 30, "\033[m")

"""
1 SITUAÇÃO - Um sistema deve classificar um número inteiro.
2 DADOS DO PROBLEMA - numero = 17
3 PERGUNTA - Verifique se o número é par ou ímpar.
"""