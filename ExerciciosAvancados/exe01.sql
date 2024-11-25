-- criando banco de dados
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;


--  criando tabela classes 
CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
fraqueza VARCHAR(255) NOT NULL
);

-- criando tabela personagens 
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL, 
poder_ataque BIGINT NOT NULL, 
poder_defesa BIGINT NOT NULL, 
dinheiro decimal(10,2),
classe BIGINT NOT NULL,
FOREIGN KEY(classe) REFERENCES tb_classes(id)
);

-- inserindo registros na tabela classes
INSERT INTO tb_classes(nome, fraqueza)
VALUES("Arqueiro","Ataques Corpo a Corpo"),
("Mago","Ataques Corpo a Corpo"),
("Guerreiro","Ataques a Distância"),
("Vampiro","Dano de Fogo"),
("Curandeiro","Velocidade Reduzida"),
("Bardo","Inflinge Pouco Dano"),
("Ladrão","Ataques Corpo a Corpo"),
("Lobisomen"," Dano de Fogo");

select * from tb_classes;

-- inserindo registros na tabela personagens
INSERT INTO tb_personagens(nome, poder_ataque,poder_defesa,dinheiro,classe)
VALUES ("Jamie Lennister", 3000, 3000, 150.22,3 ),
("Voldermort", 4000, 800, 500.50,2 ),
("Legolas", 3500, 1200, 300.90,1 ),
("Jacob", 2800, 3600, 0,8 ),
("Slash", 900, 1500, 1500.50,6 ),
("Han Solo", 900, 1600, 3000.00,7 ),
("Katniss", 3200, 1300, 600.00,1 ),
("Robin Hood", 3200, 1000, 200.00,1 ),
("Caspian", 2700, 3200, 330.20,3 ),
("Jorge", 3000, 3000, 150.22,3 );

select * from tb_personagens;

-- pesquisa: Personagens com poder_ataque > 2000

SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

-- pesquisa: Personagens com poder_defesa entre 1000 e 2000
SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

-- pesquisa: Personagens que possuem a letra 'c' no nome

SELECT * FROM tb_personagens
WHERE nome LIKE '%c%';

-- pesquisa: unindo as tabelas com INNER JOIN

SELECT tb_personagens.id, tb_personagens.nome, tb_classes.nome FROM tb_personagens
INNER JOIN tb_classes
WHERE tb_personagens.classe = tb_classes.id;

-- pesquisa: Pesquisando personagens por classe

SELECT tb_personagens.id, tb_personagens.nome, tb_classes.nome FROM tb_personagens
INNER JOIN tb_classes
WHERE tb_classes.id LIKE 1
AND tb_personagens.classe LIKE 1;
