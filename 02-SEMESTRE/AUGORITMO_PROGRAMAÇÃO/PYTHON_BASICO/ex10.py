media = 6.5

print("\033[34m", "=-" * 30, "\033[m")

if media >= 7:
    print(f"A media é \033[34m{media}\033[m você esta \033[34mAPROVADO!\033[m")
elif media >= 5 and media <= 6.9:
    print(f"A media é \033[34m{media}\033[m você esta de \033[34mRECUPERAÇÃO!\033[m")
else:
    print(f"A media é \033[34m{media}\033[m você esta \033[34mREPROVADO!\033[m")

print("\033[34m", "=-" * 30, "\033[m")

"""
1 SITUAÇÃO A escola classifica o aluno conforme sua média final.
2 DADOS DO PROBLEMA media = 6.5 | 7 ou mais: aprovado | 5 a 6.9: recuperação | abaixo de 5: reprovado
3 PERGUNTA Implemente a classificação usando condições encadeadas.
"""