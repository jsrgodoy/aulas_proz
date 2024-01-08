const nomeProduto = document.getElementById('nome-produto');
const valorProduto = document.getElementById('valor-produto');
const descricaoProduto = document.getElementById('descricao-produto');
const btnEnviar = document.getElementById('btn-enviar');
const feedbackUsuario = document.getElementById('feedback-usuario');
const produtosCadastrados = document.getElementById('produtos-cadastrados');
const formulario = document.getElementById('formulario')

function gerarPost(evento){
    feedbackUsuario.innerHTML = ''
    evento.preventDefault()

    if (!nomeProduto.value || !valorProduto.value || !descricaoProduto.value){
        feedbackUsuario.innerHTML = 'Todos os campos obrigatórios!'
        return
    }

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
    post.classList.add('postagem')
    post.innerHTML = `
    <h3>Produto: ${data.json.produto}</h3>
    <h3>Valor: ${data.json.valor}</h3>
    <p>Descrição: ${data.json.descricao}</p>`
    produtosCadastrados.prepend(post)
    nomeProduto.value = ''
    valorProduto.value = ''
    descricaoProduto.value = ''
    alert('Produto cadastrado com sucesso!')
})
.catch((error)=>{
    feedbackUsuario.innerHTML = 'Não foi possível cadastrar o produto :('
})

}

btnEnviar.addEventListener('click', gerarPost);