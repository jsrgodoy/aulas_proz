/* No arquivo script.js capture os quatro elementos criados, e use a propriedade .innerText
para adicionar conteúdo textual aos elementos 'h1' e 'a', e a propriedade .innerHTML para
adicionar três itens simples na lista não ordenada, e três itens com links para outros sites
na lista ordenada. */

let elementosCriados = document.querySelector("body");
console.log(elementosCriados);

let elementoH1 = document.querySelector("h1");
elementoH1.innerText = "Proz Educação";

let elementoA = document.querySelector("a");
elementoA.innerText = "Acesse o nosso Site";

let naoOrdenada = document.querySelector("ul");
naoOrdenada.innerHTML = `
<li>ítem 1</li>
<li>ítem 2</li>
<li>ítem 3</li>
`
let ordenada = document.querySelector("ol");
ordenada.innerHTML = `
<li><a href="https://www.google.com.br/">Google</a></li>
<li><a href="https://www.youtube.com/">YouTube</a></li>
<li><a href="https://open.spotify.com/intl-pt">Spotfy</a></li>
`

