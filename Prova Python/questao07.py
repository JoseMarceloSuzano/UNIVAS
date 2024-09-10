vetorA = []
print("Digite 10 números inteiros:")
for i in range(10):
    numero = int(input(f"Digite o número {i+1}: "))
    vetorA.append(numero)

soma_quadrados = sum(x**2 for x in vetorA)

print("A soma dos quadrados dos elementos do vetor é:", soma_quadrados)