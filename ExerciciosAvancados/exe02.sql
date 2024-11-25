-- criando banco de dados

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- criando a tabela categoria 

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(100) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

SELECT * FROM tb_categorias;

-- criando a tabela de pizzas

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
preco DECIMAL(5,2) NOT NULL,
ingredientes VARCHAR(255) NOT NULL,
categoria BIGINT NOT NULL,
FOREIGN KEY (categoria) REFERENCES tb_categorias(id)
); 

-- inserindo registros na tabela categoria

INSERT INTO tb_categorias( nome_categoria, descricao)
VALUES ("Vegana","Não contém nada de origem animal"),
("Vegetariana","Não contém carne"),
("Doce","Pizza de sabor doce"),
("Salgada","Pizza de sabor salgado"),
("Exótica","Pizza de sabor exótico");

-- inserindo registros na tabela pizzas

INSERT INTO tb_pizzas( nome,preco,ingredientes,categoria)
VALUES("Margueritta", 59.99, "4 Tipos de Queijo", 4),
("Mussarela",29.99,"Mussarela, Azeitona e Tomate", 4 ),
("Calabresa",29.99,"Calabresa e Cebola",4),
("Romeu & Julieta",39.99,"Queijo e Goiabada",3),
("Strogonoff",49.99,"Frango OU Carne, Molho Strogonoff",5),
("Beijinho",39.99,"Coco e Creme Branco", 3),
("Frango I",29.99,"Frango e Mussarela",4),
("Frango II",35.00,"Frango e Catupiry", 4);

select * from tb_pizzas;

-- pesquisa: Pizzas com valor acima de 45

SELECT * FROM tb_pizzas
WHERE preco > 45;

-- pesquisa: Pizzas com valor entre 50 e 100

SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50 AND 100;

-- pesquisa: Pizzas que possuam a letra 'm' no nome

SELECT * FROM tb_pizzas
WHERE nome LIKE '%m%';

-- pesquisa: Pesquisa utilizando INNER JOIN  para juntar tabelas

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.id = tb_categorias.id;

-- pesquisa: Pesquisa utilizando INNER JOIN paara mostrar pizzas de categorias especificas

SELECT tb_pizzas.id, tb_pizzas.nome,tb_pizzas.preco,tb_categorias.nome_categoria 
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria = 5 AND tb_categorias.id = 5;