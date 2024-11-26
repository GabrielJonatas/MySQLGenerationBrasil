CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
  id BIGINT AUTO_INCREMENT,
  nome_categoria VARCHAR(50) NOT NULL,
  marca VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
  id BIGINT AUTO_INCREMENT,
  categoriasID BIGINT,
  nome_produto VARCHAR(100) NOT NULL,
  preco DECIMAL(5,2) NOT NULL,
  descricao TEXT,
  corte VARCHAR(30),
  PRIMARY KEY (id),
  FOREIGN KEY (categoriasID) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, marca) 
VALUES
	("Carnes Bovinas", "Friboi"),
	("Carnes Suínas", "Seara"),
	("Aves", "Sadia"),
	("Carnes Exóticas", "Fazenda Premium"),
	("Linguiças e Embutidos", "Aurora"),
	("Peixes e Frutos do Mar", "Costa Sul"),
	("Miúdos", "Friboi"),
	("Carne Moída", "Friboi");

INSERT INTO tb_produtos (categoriasID, nome_produto, preco, descricao, corte) 
VALUES
	(1, "Picanha Bovina", 79.90, "Corte nobre e macio ideal para churrasco.", "Picanha"),
	(1, "Contra-filé", 49.90, "Carne bovina macia, ideal para grelhados.", "Contra-filé"),
	(2, "Costelinha Suína", 29.90, "Perfeita para assados e churrasco.", "Costela"),
	(2, "Pernil Suíno", 21.90, "Corte clássico para assar ou temperar.", "Pernil"),
	(3, "Coxa de Frango", 12.50, "Ideal para fritura ou cozimento.", "Coxa"),
	(3, "Peito de Frango", 18.90, "Corte versátil para grelhados e ensopados.", "Peito"),
	(4, "Carne de Cordeiro", 89.90, "Carne exótica de sabor marcante.", "Cordeiro"),
	(4, "Carne de Javali", 99.90, "Carne rica em sabor e textura.", "Javali"),
	(5, "Linguiça Toscana", 19.90, "Linguiça temperada ideal para churrasco.", "Linguiça"),
	(5, "Salsicha Viena", 14.90, "Salsicha especial para aperitivos.", "Salsicha"),
	(6, "Salmão em Postas", 79.90, "Peixe fresco ideal para grelhados e sashimi.", "Salmão"),
	(7, "Fígado Bovino", 12.90, "Rico em ferro, ideal para refogados.", "Fígado");

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco > 50.00 AND preco < 160.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "C%";

SELECT tb_produtos.id, nome_produto, preco, descricao, corte, tb_categorias.nome_categoria, tb_categorias.marca
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id;

SELECT tb_produtos.id, nome_produto, preco, descricao, corte, tb_categorias.nome_categoria, tb_categorias.marca
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id
WHERE tb_categorias.marca = "Friboi";
