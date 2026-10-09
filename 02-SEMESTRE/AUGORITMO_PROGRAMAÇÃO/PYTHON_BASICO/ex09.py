num = -4

print("\033[34m", "=-" * 30, "\033[m")

if num < 0:
    print(f"O numero \033[34m{num}\033[m é \033[34mNEGATIVO\033[m")
elif num > 0:
    print(f"O numero \033[34m{num}\033[m é \033[34mPOSITIVO\033[m")
else:
    print(f"O numero \033[34m{num}\033[m é \033[34mZERO\033[m")

print("\033[34m", "=-" * 30, "\033[m")

"""
1 SITUAÇÃO Um programa precisa identificar o sinal de um número.
2 DADOS DO PROBLEMA numero = -4
3 PERGUNTA Informe se o valor é positivo, negativo ou zero.
"""