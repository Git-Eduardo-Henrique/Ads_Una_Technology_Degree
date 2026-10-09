soma = atual = 0

print("\033[34m", "=-" * 30, "\033[m")

for cont in range(1, 101):
    atual = soma
    soma += cont
    print(f"soma atual: \033[34m{atual} + {cont} = {soma}\033[m")

print("\033[34m", "=-" * 30, "\033[m")
print(f"soma total de 1 a 100: \033[34m{soma}\033[m")
print("\033[34m", "=-" * 30, "\033[m")
"""
1 SITUAÇÃO Um programa deve somartodos os inteiros de umasequência.
2 DADOS DO PROBLEMA números de 1 a 100
3 PERGUNTA Calcule a soma total dos valores de 1 até 100.
"""