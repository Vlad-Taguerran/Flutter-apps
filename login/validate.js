
let form = document.getElementById('form')
let resposta = document.createElement('p')
resposta.style.color = 'red'
resposta.style.fontSize = '2.3rem'
resposta.style.marginTop = '3.2rem'
resposta.style.textShadow = '0px 0px 6px red'

validate = (event) => {
  event.preventDefault()
  let login = document.getElementById('login').value
  let senha = document.getElementById('teste').value


  if (!senha || !login) {
    resposta.innerHTML = 'Email e senha requeridos'


    form.appendChild(resposta)
  }
  else if (login.length < 3) {
    resposta.innerHTML = 'Login muito curto'
    form.appendChild(resposta)
  } else if ((login.substr(-4) !== '.com') && (login.substr(-7) !== '.com.br')) {
    resposta.innerHTML = 'Tipo de dominio de email invalido'
    form.appendChild(resposta)

  } else { submeter() }
}



submeter = () => {
  alert('bem vindo')
}