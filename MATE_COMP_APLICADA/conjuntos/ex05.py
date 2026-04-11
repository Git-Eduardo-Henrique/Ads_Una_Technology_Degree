antes = {1, 2, 5, 6, 9}
depois = {1, 2, 8, 10}

print(50*"-=")
print(f"antes = {antes}\ndepois = {depois}")
print(50*"-=")

print(f"a) elementos que não mudaram: {antes&depois}")
print(f"b) novos elementos: {depois-antes}")
print(f"c) elementos que foram removidos: {antes-depois}")
print(50*"-=")
