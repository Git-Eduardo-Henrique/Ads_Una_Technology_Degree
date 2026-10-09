def saudacao(nome = ""):
    print(f"Olá \033[34m{nome}!\033[m Seja bem vindo!")

print("\033[34m", "=-" * 30, "\033[m")

saudacao("Marina")
saudacao("Eduardo")

print("\033[34m", "=-" * 30, "\033[m")
"""
1 SITUAÇÃO Um programa precisa reutilizar uma saudação para diferentes pessoas.
2 DADOS DO PROBLEMA nome = "Marina"
3 PERGUNTA Crie uma função que receba o nome e mostre uma saudação.
"""