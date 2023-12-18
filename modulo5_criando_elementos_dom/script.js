/* Crie um projeto com dois arquivos: index.html e script.js.
No arquivo 'index' insira apenas a estrutura base HTML e a
tag script para conectar o arquivo HTML com o arquivo de extensão JavaScript.
Usando os conceitos aprendidos nesse módulo, e sem alterar o arquivo index.html,
adicione um título simples ao site com o id 'titulo', e um elemento que represente
um produto à venda. O produto precisa incluir pelo menos o nome, a descrição e o preço.
Pode incluir outros "elementos filhos" se achar necessário como, por exemplo, uma imagem.
Procure usar o método simples e o método complexo, ensinados neste tópico. */

let titulo = document.createElement("h1")
titulo.id = "titulo_prod"
titulo.innerText = "Auto Car"
console.log(titulo)

const main = document.querySelector("body");
main.style.color = "blue"
main.style.backgroundColor = "lightyellow"

main.appendChild(titulo);

const descricao = document.createElement("div");
descricao.id = "informaçoes";
descricao.innerHTML = `
<h2>Fiat Argo 1.0 Drive</h2>
<img src="download.jpeg" alt="">
<p>Flex, Final da placa 9
airbag motorista, alarme, freios ABS, airbag passageiro
ar-condicionado, volante com regulagem de altura, direção elétrica, travas elétricas
Kit Multimídia, rádio FM/AM
vidros elétricos dianteiros, limp. traseiro, desemb. traseiro</p>
<h3>Preço: R$63.990,00</h3>
`
main.appendChild(descricao);