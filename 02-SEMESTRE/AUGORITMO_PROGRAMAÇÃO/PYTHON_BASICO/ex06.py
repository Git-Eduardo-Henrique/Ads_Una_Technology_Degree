preco = 200.00
desconto = 15
preco_desconto = preco - ( preco * desconto / 100)

print("\033[34m", "=-" * 30, "\033[m")
print(f"Preço do original do produto: \033[34mR${preco}\033[m")
print(f"Preço do produto com desconto ( 15% ): \033[34mR${preco_desconto}\033[m")
print("\033[34m", "=-" * 30, "\033[m")

"""
1 SITUAÇÃO - Uma loja oferece desconto percentual sobre o preço de um produto.
2 DADOS DO PROBLEMA - preco = 200.00, desconto = 15
3 PERGUNTA - Calcule o valor do desconto e o preço final.
"""