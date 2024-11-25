-- Criacao do banco de dados

CREATE DATABASE db_eCommerce;
USE db_eCommerce;

-- Criacao da tabela e suas colunas

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade int,
marca VARCHAR(255),
preco DECIMAL(8,2) NOT NULL,
PRIMARY KEY(id)
);

-- Inserindo registros na tabela

INSERT INTO tb_produtos(nome, quantidade, marca, preco)
VALUES("Camiseta", 5, "Nike", 79.99),
("Chuteira", null, "Umbro", 99.99),
("Tenis de corrida", 2, "Adidas", 699.99),
("Luva de boxe", 8, "Everlast", 189.99),
("Bermuda", 15, "Nike", 159.99),
("Chinelo", 6, "Havaianas", 30.00),
("Óculos e Sol", 2, "Oakley", 500.00),
("Meias", 4, "Puma", 19.99);

-- Fazendo uma pesquisa: produtos com valor maior que 500

SELECT * FROM tb_produtos WHERE preco>500;

-- Fazendo uma pesquisa: produtos com valor menor que 500



-- Atualizando registros

UPDATE tb_produtos SET quantidade = 10 WHERE id=2;

-- Checando atualizaçãoptimize

SELECT * FROM tb_produtos;