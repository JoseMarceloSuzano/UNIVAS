def eh_primo(num):
    """Verifica se um número é primo."""
    if num <= 1:
        return False
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False
    return True

def numeros_primos(array):
    """Retorna uma lista de números primos em um array dado."""
    primos = [num for num in array if eh_primo(num)]
    return primos

def main():
   
    entrada = input("Digite 10 números inteiros, separados por espaços: ")
    numeros = list(map(int, entrada.split()))

    if len(numeros) != 10:
        print("Por favor, insira exatamente 10 números inteiros.")
        return

    primos = numeros_primos(numeros)
    
    print("Números primos encontrados:", primos)

if __name__ == "__main__":
    main()
