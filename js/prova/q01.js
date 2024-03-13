function executarCb(funcao) {
    funcao('teste')
}

executarCb(function(mensagem){
    console.log(`Mensagem: ${mensagem}`)
})