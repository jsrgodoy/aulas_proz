CREATE DATABASE supermercado;
use supermercado;
CREATE TABLE produto (
    id_prod INT AUTO_INCREMENT PRIMARY KEY,
    nome_prod VARCHAR(30) NOT NULL,
    marca VARCHAR(20) NOT NULL,
    validade DATE NOT NULL
);
CREATE TABLE cliente (
    id_cli INT AUTO_INCREMENT PRIMARY KEY,
    nome_cli VARCHAR(16) NOT NULL,
    endereco VARCHAR(30)
);
CREATE TABLE compra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_cliente INT NOT NULL,
    fk_id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    CONSTRAINT fk_cliente_compra FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id_cli),
    CONSTRAINT fk_produto_compra FOREIGN KEY (fk_id_produto) REFERENCES produto(id_prod)
);
INSERT INTO produto (nome_prod, marca, validade)
VALUES ('Azeite', 'Andorinha', '2024-05-02'),
    ('Arroz', 'TioJoão', '2024-09-15'),
    ('Feijão', 'CaldoNobre', '2024-09-26'),
    ('Massa Penne', 'Italiano', '2024-02-20'),
    ('Farinha de Trigo', "PãoBom", '2024-01-15');
INSERT INTO cliente (nome_cli, endereco)
VALUES ('João', 'Rua Tupy, 45 - Bairro Veredas'),
    ('Felipe', 'AV Nitro, 89 - Bairro São João'),
    ('Dario', 'Rua Logica, 001 - Bairro Tião');
INSERT INTO compra (fk_id_produto, fk_id_cliente, quantidade)
VALUES (1, 2, 2),
    (5, 1, 3),
    (3, 3, 1),
    (1, 1, 2),
    (4, 2, 2),
    (2, 3, 3);
SELECT produto.nome_prod,
    produto.marca
FROM produto
    INNER JOIN compra ON produto.id_prod = compra.fk_id_produto
WHERE compra.fk_id_cliente = 2;
SELECT produto.nome_prod,
    produto.marca,
    compra.quantidade
FROM produto
    RIGHT JOIN compra ON produto.id_prod = compra.fk_id_produto;
SELECT produto.nome_prod,
    produto.marca,
    compra.quantidade
FROM produto
    LEFT JOIN compra ON produto.id_prod = compra.fk_id_produto;
SELECT produto.nome_prod,
    produto.marca,
    compra.quantidade
FROM produto
    RIGHT JOIN compra ON produto.id_prod = compra.fk_id_produto
UNION
SELECT produto.nome_prod,
    produto.marca,
    compra.quantidade
FROM produto
    LEFT JOIN compra ON produto.id_prod = compra.fk_id_produto;