--  Criando o banco de dados 

CREATE DATABASE db_escola;
USE db_escola;

-- criando tabela turma 

CREATE TABLE tb_turma(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(30)NOT NULL,
periodo VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);


-- inserindo registros na tabela tb_turma

INSERT INTO tb_turma(nome, periodo)
VALUES	("1ºA", "Diurno"),
("1°B","Matutino"),
("2°A","Diurno"),
("3°C","Noturno");

-- criando tabela estudantes

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT, 
nome VARCHAR(255) NOT NULL,
idade INT,
nota_final DECIMAL(3,1),
turma BIGINT NOT NULL, 
FOREIGN KEY (turma) REFERENCES tb_turma(id) ,
PRIMARY KEY(id)
);

-- checando a criação da tabela

SELECT * FROM tb_turma;

-- inserindo registros na tabela tb_estudantes

INSERT INTO tb_estudantes(nome, idade,nota_final,turma)
VALUES ("Caique", 16, 8.0, 4),
("Rafaela", 16, 9.0, 4),
("Arthur", 14, 9.5, 1),
("Isak", 14, 8.0, 1),
("Henrique", 14, 7.0, 3),
("Gustavo", 16, 4.0, 2),
("Fábio", 16, 5.6, 2),
("Gabriel", 16, 6.7, 2);

-- checar tabela tb_estudantes

SELECT * FROM tb_estudantes;

-- fazendo pesquisa : alunos com nota maior que 7.0

SELECT * FROM tb_estudantes WHERE nota_final > 7;

-- fazendo pesquisa : alunos com nota menor que 7.0

SELECT * FROM tb_estudantes WHERE nota_final < 7;

-- fazendo pesquisa : alunos com nota igual 7.0

SELECT * FROM tb_estudantes WHERE nota_final = 7;

-- atualizando registros 

UPDATE tb_estudantes SET nota_final = 7.5 WHERE id=5;

-- checando atualizacao

select * from tb_estudantes;