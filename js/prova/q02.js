function mostrarMensagemDepoisDeSegundos(mensagem) {
    setTimeout(() => {
        console.log(mensagem)
    }, 5000)
} 

mostrarMensagemDepoisDeSegundos('Mostrando depois de 5 segundos')