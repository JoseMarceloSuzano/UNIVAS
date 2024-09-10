nota01 = [1, 0, 3, 4]
media = sum(nota01) / len(nota01)
provaFinal = [13, 2, 4, 10]

if(media >= 7):
    print('APROVADO')
else:
    provaFinal = [1, 2, 4, 10]
    mediaFinal = sum(provaFinal) / len(provaFinal)
    if(mediaFinal >= 5):
        print('APROVADO NA RECUPERAÇÃO')
    else:
        print('REPROVADO')