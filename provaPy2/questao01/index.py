def limpar_texto(texto):
    """Remove espaços e transforma o texto em minúsculas."""
    return ''.join(texto.split()).lower()

def eh_palindromo(texto):
    """Verifica se o texto é um palíndromo."""
    texto_limpo = limpar_texto(texto)
    return texto_limpo == texto_limpo[::-1]

def main():
    entrada = input("Digite uma palavra, frase ou número: ")
    
    if not entrada:
        print("A entrada não pode ser vazia.")
        return
    
    if eh_palindromo(entrada):
        print(f'"{entrada}" é um palíndromo.')
    else:
        print(f'"{entrada}" não é um palíndromo.')

if __name__ == "__main__":
    main()
