    let escola = {

    aluno1 : {
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
    },

    aluno2 : {
        nome: 'Marcelo Santos',
        nascimento: '27/05/2001',
        cpf: '13765587690',
        matricula: '9816295',
        notas: [8, 6, 4],
        retornaMedia: function(notas) {
        let soma = 0
        for(let i = 0; i < notas.length; i++){
        soma += notas[i]
        }
        let media = soma / notas.length
        return media
        }
        },
    aluno3: {
        nome: 'Marcelo Suzano',
        nascimento: '27/05/2003',
        cpf: '13765587691',
        matricula: '9816298',
        notas: [7, 5, 3],
        retornaMedia: function(notas) {
        let soma = 0
        for(let i = 0; i < notas.length; i++){
        soma += notas[i]
        }
        let media = soma / notas.length
            return media
            }
        },

    aluno4: {
        nome: 'Marcelo Junior',
        nascimento: '27/05/2004',
        cpf: '13765587693',
        matricula: '9816299',
        notas: [3, 4, 2],
        retornaMedia: function(notas) {
        let soma = 0
        for(let i = 0; i < notas.length; i++){
        soma += notas[i]
        }
        let media = soma / notas.length
            return media
            }
        },

    aluno5: {
        nome: 'José Marcelo',
        nascimento: '27/05/2005',
        cpf: '13765587694',
        matricula: '9816296',
        notas: [1, 9, 7],
        retornaMedia: function(notas) {
        let soma = 0
        for(let i = 0; i < notas.length; i++){
        soma += notas[i]
        }
        let media = soma / notas.length
            return media
            }
        }  
}

let maiorMedia = escola.aluno1.retornaMedia()
let menorMedia = 0
let mediaGeral = 0

console.log(maiorMedia)
    
