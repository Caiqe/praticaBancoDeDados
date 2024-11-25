-- criando banco de dados

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- criando tabela categoria

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(255) NOT NULL,
indicacao VARCHAR(255) NOT NULL
);

-- criando tabela produtos

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(100) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
validade DATE,
categoria BIGINT NOT NULL,
FOREIGN KEY(categoria) REFERENCES tb_categorias(id)
);

-- povoando tabela categorias

INSERT INTO tb_categorias(nome_categoria,indicacao)
VALUES ("Cosméticos","Qualquer Pessoa"),
("Analgésicos","Dores"),
("Anti-Inflamatórios","Somente com Prescrição"),
("Anti-Gripal","Sintomas de Gripe"),
("Outros","Checar na Loja");

select * from tb_categorias;

-- povoando a tabela produtos

INSERT INTO tb_produtos(nome_produto,preco,validade,categoria)
VALUES ("Inalador", 199.99, '2012-12-12',5 ),
("Xô Gripe", 14.50, '2024-12-12', 4),
("Doril",11.99 , '2024-12-25', 2),
("Protetor Solar", 79.99, '2025-02-05', 1),
("Manteiga De Cacau", 7.99, '2025-03-02', 1),
("Tornozeleira", 49.99, '2012-12-12', 5),
("Gripe Nunca Mais", 9.99, '2025-03-14', 4),
("Luva Latex", 15.00, '2012-12-12', 5);

select * from tb_produtos;

-- pesquisa: Produtos com valor > 50

SELECT * FROM tb_produtos
WHERE preco > 50;

-- pesquisa: Produtos com valor entre 5 e 60

SELECT * FROM tb_produtos
WHERE preco BETWEEN 5 AND 60;

-- pesquisa: produtos que possuam a letra 'c' no nome

SELECT * FROM tb_produtos
WHERE nome_produto LIKE '%C%';

-- pesquisa: Pesquisa utilizando INNER JOIN

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.id = tb_categorias.id;

-- pesquisa: filtrando por categoria

SELECT tb_produtos.id,tb_produtos.nome_produto,tb_produtos.preco,tb_categorias.nome_categoria FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria = 1 AND tb_categorias.id = 1;