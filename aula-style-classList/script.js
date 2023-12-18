//Primeira parte da aula, estilizar pelo JS:

const login = document.querySelector("h2");
console.log(login)
 login.style.color = 'blue';
 login.style.fontSize = '60px';

 const botao = document.querySelector("button");
 console.log(botao)
 botao.style.color = 'white';
 botao.style.fontSize = '16px';
 botao.style.backgroundColor = 'green';
 
//Segunda parte da aula:

const usernameInput = document.querySelector('#login-usuario');
usernameInput.classList.add('error');

const errorMessage = document.querySelector('.error-text');
errorMessage.classList.add('correct');

const loginError = document.querySelector('#login-senha');
loginError.classList.add('error');

const errorMsn = document.querySelectoarAll('.error-text');
errorMsn.classList.add()