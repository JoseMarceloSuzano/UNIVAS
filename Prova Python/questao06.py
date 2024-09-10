def extrair_digitos(cpf):
    return ''.join(char for char in cpf if char.isdigit())

def verificar_paridade(soma):
    if soma % 2 == 0:
        return "O CPF é par."
    else:
        return "O CPF é ímpar."

def main():
    cpf = input("Digite o CPF no formato 999.999.999-99: ")
    
    if len(cpf) != 14 or cpf[3] != '.' or cpf[7] != '.' or cpf[11] != '-' or not cpf[:3].isdigit() or not cpf[4:7].isdigit() or not cpf[8:11].isdigit() or not cpf[12:].isdigit():
        print("Formato de CPF inválido. Certifique-se de seguir o formato 999.999.999-99.")
        return
    
    digitos = extrair_digitos(cpf)
    soma_digitos = sum(int(digit) for digit in digitos)
    mensagem = verificar_paridade(soma_digitos)
    
    print(f"Soma dos dígitos do CPF: {soma_digitos}")
    print(mensagem)

if __name__ == "__main__":
    main()

    