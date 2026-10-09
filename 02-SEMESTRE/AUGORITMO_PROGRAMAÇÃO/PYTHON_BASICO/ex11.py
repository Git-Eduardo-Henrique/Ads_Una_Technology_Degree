num1 = 12
num2 = 27

print("\033[34m", "=-" * 30, "\033[m")

if num1 > num2:
    print(f"O numero \033[34m{num1}\033[m é maior que o numero \033[34m{num2}\033[m")
elif num2 > num1:
    print(f"O numero \033[34m{num2}\033[m é maior que o numero \033[34m{num1}\033[m")
else:
    print(f"Os numero \033[34m{num1}\033[m e \033[34m{num2}\033[m são iguais")

print("\033[34m", "=-" * 30, "\033[m")

"""
1 SITUAÇÃO Um sistema recebe dois valores e precisa destacar o maior.
2 DADOS DO PROBLEMA numero1 = 12 numero2 = 27
3 PERGUNTAInforme qual número é maior ou se ambos são iguais.
"""