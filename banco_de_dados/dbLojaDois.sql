/* EXERCÍCIO ......   Uma loja tem um banco de dados que contém todo o controle de vendas de produtos
 e de cadastro de clientes. Pensando nisso, crie uma função para somar todos os 
 clientes que foram cadastrados na loja durante um dia.........*/
CREATE DATABASE loja_dois;
use loja_dois;
CREATE TABLE tabela_de_vendas (
    id SERIAL PRIMARY KEY,
    produto VARCHAR(50),
    quantidade INT,
    data_da_compra DATE
);
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome_cliente VARCHAR(50) NOT NULL,
    idade_cliente INT,
    data_cadastro DATE
);
INSERT INTO tabela_de_vendas (produto, quantidade, data_da_compra)
VALUES ('Camiseta', 10, '2023-11-30'),
    ('Calça', 10, '2023-11-30'),
    ('Meia', 10, '2023-11-30'),
    ('Bermuda', 10, '2023-11-30'),
    ('Camiseta', 20, '2023-11-29'),
    ('Calça', 20, '2023-11-29'),
    ('Meia', 20, '2023-11-29'),
    ('Bermuda', 20, '2023-11-29'),
    ('Camiseta', 15, '2023-11-28'),
    ('Calça', 15, '2023-11-28'),
    ('Meia', 15, '2023-11-28'),
    ('Bermuda', 15, '2023-11-28');
INSERT INTO clientes (nome_cliente, idade_cliente, data_cadastro)
VALUES ('Jeferson', 43, '2023-08-05'),
    ('Antônio', 25, '2023-08-05'),
    ('Caroline', 30, '2023-08-05'),
    ('Márcia', 28, '2023-09-10'),
    ('João', 50, '2023-09-10'),
    ('Vanessa', 33, '2023-09-10');
CREATE FUNCTION clientes_cadastrados_dia(data_consulta DATE) RETURNS INT DETERMINISTIC BEGIN
DECLARE totalClientes INT;
SELECT COUNT(*) INTO totalClientes
FROM clientes
WHERE data_cadastro = data_consulta;
RETURN totalClientes;
END;
SELECT clientes_cadastrados_dia('2023-08-05') AS total_clientes_no_dia;