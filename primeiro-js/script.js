//Declaração de Função Regular

function mensagem() {
    console.log("Conexão feita com Sucesso! Regular")
}
console.log("*** Funcão Regular ***")
mensagem()
mensagem()
mensagem()

//Declaração de Função Anônima
const mens = function(){
    console.log("Conexão feita com Sucesso! Anônima")
}
console.log("*** Funcão Anônima ***")
mens()
mens()
mens()

//Declaração Arrow Function
const conexao = () => console.log("Conexão feita com sucesso!  Arrow")

console.log("*** Arrow Function ***")
conexao()
conexao()
conexao()