function clickMenu() {
  var menu = document.querySelector("#itens > menu > ul");

  if (menu.style.display == 'block') {
    menu.style.display = 'none';
  } else {
    menu.style.display = 'block';
  }
}

function submitForm() {
  var nome = document.getElementById('nome').value
  var assunto = document.getElementById('assunto').value
  var email = document.getElementById('email').value
  var telefone = document.getElementById('telefone').value

  if (!nome || !assunto || !email || !telefone) {
    window.alert("Campo nulo!")
  } else if (nome == ' ' || assunto == ' ' || email == ' ' || telefone == ' ') {
    window.alert('Campo vazio')
  } else if (!validateEmail(email)) {
    window.alert('Email inválido');
  }
  else {
    window.alert('Nome: ' + nome + ' Assunto: ' + assunto + ' Email: ' + email + ' Telefone: ' + telefone)
  } 
}

function validateEmail(email) {
  var re = /\S+@\S+\.\S+/
  return re.test(email)
}