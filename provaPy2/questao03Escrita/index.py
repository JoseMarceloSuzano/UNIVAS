def processar_dados():
    produtos = [
        ("Arroz", 5.50, 10),
        ("Feijão", 7.25, 8),
        ("Macarrão", 3.20, 15),
    ]
    
    total_estoque = sum(produto[2] for produto in produtos)
    precos_acima_da_media = [produto[0] for produto in produtos
        if produto[1] > (sum(produto[1] for produto in produtos) / len(produtos))]
    
    return total_estoque, precos_acima_da_media

estoque_total, produtos_mais_caros = processar_dados()

print("Estoque total:", estoque_total)
print("Produtos com preço acima da média:", produtos_mais_caros)