CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(60) NOT NULL,
    descricao TEXT,
    PRIMARY KEY (id)	
);

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT,
    categoriasID BIGINT,
    nome_pizza VARCHAR(50) NOT NULL,
    tipo_massa VARCHAR(20),
    tipo_borda VARCHAR(40),
    preco DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoriasID) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES
	("Clássicas", "Pizzas tradicionais que agradam a todos os paladares."),
	("Especiais", "Pizzas com combinações exclusivas e ingredientes premium."),
	("Vegetarianas", "Opções sem carne, feitas com ingredientes frescos."),
	("Doces", "Deliciosas pizzas doces para sobremesa."),
	("Infantis", "Sabores simples e divertidos para crianças."),
	("Premium", "Pizzas gourmet com ingredientes sofisticados."),
	("Apimentadas", "Pizzas para quem gosta de sabores intensos."),
	("Veganas", "Preparadas sem ingredientes de origem animal.");

INSERT INTO tb_pizzas (categoriasID, nome_pizza, tipo_massa, tipo_borda, preco) 
VALUES
	(1, "Margherita", "Fina", "Tradicional", 25.90),
	(1, "Calabresa", "Tradicional", "Recheada com queijo", 29.90),
	(2, "Frango com Catupiry", "Pan", "Recheada com catupiry", 34.90),
	(2, "Quatro Queijos", "Tradicional", "Tradicional", 32.50),
	(3, "Vegetariana Especial", "Integral", "Tradicional", 30.00),
	(3, "Caprese", "Fina", "Tradicional", 33.90),
	(4, "Chocolate", "Doce", "Recheada com chocolate branco", 28.50),
	(4, "Banana com Canela", "Doce", "Tradicional", 26.90),
	(5, "Mini Calabresa", "Tradicional", "Tradicional", 19.90),
	(5, "Mini Margherita", "Tradicional", "Tradicional", 19.90),
	(6, "Trufa Negra com Presunto Parma", "Fina", "Recheada com parmesão", 49.90),
	(7, "Mexicana", "Tradicional", "Recheada com cheddar", 36.90),
	(8, "Vegana Marguerita", "Integral", "Sem borda", 27.90),
	(8, "Vegana de Cogumelos", "Integral", "Sem borda", 31.90);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco < 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "M%";

SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriasID = tb_categorias.id;

SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoriasID = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Doces";
