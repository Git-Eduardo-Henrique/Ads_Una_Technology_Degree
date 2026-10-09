nome = "João"
nota1 = 8
nota2 = 6
nota3 = 7
media = (nota1 + nota2 + nota3) / 3

print("\033[34m", "=-" * 30, "\033[m")
print(f"Aluno \033[34m{nome}!\033[m com notas \033[34m{nota1}, {nota2} e {nota3}\033[m")
print(f"tem média \033[34m{media}\033[m")

if media < 5:
    print(f"O aluno está \033[34mREPROVADO!\033[m")
elif media >= 5 and media < 7:
    print(f"O aluno está de \033[34mRECUPERAÇÃO!\033[m")
else:
    print(f"O aluno está de \033[34mAPROVADO!\033[m")

print("\033[34m", "=-" * 30, "\033[m")

"""
1 SITUAÇÃO Um sistema deve calcular a média e informar a situação de um aluno.
2 DADOS DO PROBLEMA
nome = "João"
nota1 = 8
nota2 = 6
nota3 = 7
3 PERGUNTA Calcule a média, determine a situação e apresente a síntese do aluno.
"""