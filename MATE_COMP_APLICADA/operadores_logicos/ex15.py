a = 10
b = 5
c = 20

p1 = a > b and c > a
p2 = a > b and b > c
p3 = b == 5 or c < 15
p4 = b != 5 or a < 12
p5 = not a > c

print(50*"-=")
print(f"a = {a} | b = {b} | c = {c}")
print(50*"-=")
print(f"P1: A maior que B e C maior que A? {p1}")
print(f"P2: A maior que B e B maior que C? {p2}")
print(f"P3: B = 5 ou C menor que 15? {p3}")
print(f"P4: B diferente de 5 ou A menor que 12? {p4}")
print(f"P5: Não é verdade que A seja menor que C? {p5}")
print(50*"-=")
