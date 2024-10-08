
def calcular_temperatura_media(cidades):
    medias = []
    for cidade, temperaturas in cidades:
        temperatura_media = sum(temperaturas) / len(temperaturas)
        medias.append((cidade, temperatura_media))
    return medias


if __name__ == "__main__":
    
    cidades = [
        ("São Paulo", [22, 24, 23, 21, 25, 26, 24]),
        ("Rio de Janeiro", [30, 31, 29, 32, 30, 28, 29]),
        ("Belo Horizonte", [25, 26, 27, 28, 24, 25, 26])
    ]

    
    medias_temperaturas = calcular_temperatura_media(cidades)

    
    for cidade, media in medias_temperaturas:
        print(f"A temperatura média em {cidade} é {media:.2f}°C")

