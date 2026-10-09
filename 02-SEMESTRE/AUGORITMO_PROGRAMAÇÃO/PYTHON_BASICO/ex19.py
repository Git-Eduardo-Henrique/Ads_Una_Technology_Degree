nota = 7.5
minimo = 7

print("\033[34m", "=-" * 30, "\033[m")

if nota >= minimo:
    print(f"Sua nota é \033[34m{nota}\033[m com o minimo de aprovação sendo \033[34m{minimo}\033[m, você está \033[34mAPROVADO!\033[m")
else:
    print(f"Sua nota é \033[34m{nota}\033[m com o minimo de aprovação sendo \033[34m{minimo}\033[m, você está \033[34mREPROVADO!\033[m")

print("\033[34m", "=-" * 30, "\033[m")

"""
1 SITUAÇÃO A escola aprova o aluno quando a nota final atinge o mínimo exigido.
2 DADOS DO PROBLEMA nota_final = 7.5 mínimo = 7
3 PERGUNTA Informe se o aluno foi aprovado ou reprovado.
"""