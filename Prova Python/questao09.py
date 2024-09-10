def fibonacci_sequence(n):
    if n <= 0:
        return "O valor de n deve ser um número inteiro positivo."
    
    sequence = []
    a, b = 0, 1
    
    while len(sequence) < n:
        sequence.append(a)
        a, b = b, a + b
    
    return sequence

n = 8
result = fibonacci_sequence(n)
print(f"A sequência de Fibonacci com {n} termos é: {result}")

    