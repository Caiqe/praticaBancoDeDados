-- Criacao do banco de dados

CREATE DATABASE db_rh;
USE db_rh;

-- Criacao da tabela colaboradores e suas colunas

CREATE TABLE tb_colaboradores(
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,
idade int,
email VARCHAR(255),
salario decimal(8,2) NOT NULL,
PRIMARY KEY(id)
);

-- Inserindo dados na Tabela

INSERT INTO tb_colaboradores (nome, idade, email, salario)
VALUES ("Caique", 22, "caique@generation.com.br", 2500.00),
("Rafaela", 22, "rafaela@generation.com.br", 2500.00),
("Lucas", 26, "lucas@generation.com.br", 3200.00),
("Arthur", 18, "arthur@generation.com.br", 1800.00),
("Isak", 21, "isak@generation.com.br", 1700.00);

-- Fazendo uma pesquisa: colaboradores com salario maior que 2000

SELECT * FROM tb_colaboradores WHERE salario>2000;

-- Fazendo uma pesquisa: colaboradores com salario menor que 2000

SELECT * FROM tb_colaboradores WHERE salario<2000;

-- Fazendo uma atualização de registro 

UPDATE tb_colaboradores SET salario = 2000.00 WHERE id = 4;

-- Checando atualização

SELECT * FROM tb_colaboradores;