const nomeProduto = document.getElementById('nome-produto');
const valorProduto = document.getElementById('valor-produto');
const descricaoProduto = document.getElementById('descricao-produto');
const btnEnviar = document.getElementById('btn-enviar');
const feedbackUsuario = document.getElementById('feedback-usuario');
const produtosCadastrados = document.getElementById('produtos-cadastrados');

function gerarPost(evento){
    evento.preventDefault()

    const jsonBody = JSON.stringify({
        produto: nomeProduto.value,
        valor: valorProduto.value,
        descricao: descricaoProduto.value
    })
    
fetch('https://httpbin.org/post', {
    method: 'POST',
    headers: {
 "Content-Type": "application/json"
    },
    body: jsonBody

})
.then(res => res.json())
.then(data => {
    console.log(data)
    const post = document.createElement('div')
    post.innerHTML = `
    <h3>Produto: ${data.json.produto}</h3>
    <h3>Valor: ${data.json.valor}</h3>
    <p>Descrição: ${data.json.descricao}</p>`
    produtosCadastrados.appendChild(post)
    nomeProduto.value = ''
    valorProduto.value = ''
    descricaoProduto.value = ''
})
.catch()

}

btnEnviar.addEventListener('click', (evento) => gerarPost (evento));