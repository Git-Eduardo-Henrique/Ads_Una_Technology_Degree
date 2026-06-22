l1 = {1, 2, 6, 8}
l2 = {3, 6, 8, 9}

print(50*"-=")
print(f"l1 = {l1}\nl2 = {l2}")
print(50*"-=")

print(f"a) valores comuns as duas listas:{l1&l2}")
print(f"b) valores que só existem na primeira: {l1-l2}")
print(f"c) valores que só existem na segunda: {l2-l1}")
print(50*"-=")