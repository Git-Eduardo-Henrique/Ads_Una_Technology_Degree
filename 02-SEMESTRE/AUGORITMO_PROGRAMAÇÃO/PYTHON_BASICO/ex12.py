usuario = "aluno"
senha = "python123"

print("\033[34m", "=-" * 30, "\033[m")

if usuario == "aluno" and senha == "python123":
    print(f"Usuario: \033[34m{usuario}\033[m | senha: \033[34m{senha}\nACESSO CONCEDIDO\033[m")
else:
    print(f"Usuario: \033[34m{usuario}\033[m | senha: \033[34m{senha}\nACESSO NEGADO\033[m")

print("\033[34m", "=-" * 30, "\033[m")

"""
1 SITUAÇÃO Uma tela deve validar usuário e senha cadastrados.
2 DADOS DO PROBLEMA usuario = "aluno" senha = "python123"
3 PERGUNTA Autorize o acesso somente quando os dois dados estiverem corretos.
"""