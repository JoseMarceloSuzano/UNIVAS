const pessoa = {
    nome: 'Marcelo',
    nascimento: '27/05/2002',
    cpf: '13765587699'
}

const aluno = {
    nome: 'Marcelo',
    nascimento: '27/05/2002',
    cpf: '13765587699',
    matricula: '9816296',
    notas: [9, 7, 5],
    retornaMedia: function(notas) {
        let soma = 0
        for(let i = 0; i < notas.length; i++){
            soma += notas[i]
        }
        let media = soma / notas.length
        return media
    }
}

console.log(`A média do aluno ${aluno.nome} foi de ${aluno.retornaMedia(aluno.notas)}`)