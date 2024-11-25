CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	nome_produto VARCHAR(150) NOT NULL,
    descricao TEXT,
	preco DECIMAL(5,2) NOT NULL,
    categoria VARCHAR(50),
    disponibilidade VARCHAR(3) NOT NULL, 
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome_produto, descricao, preco, categoria, disponibilidade)
VALUES
    ("Camiseta básica", "Camiseta de algodão, diversas cores.", 29.99, "Vestuário", "SIM"),
    ("Caneca personalizada", "Caneca de cerâmica para presente.", 19.90, "Presentes", "NÃO"),
    ("Livro de receitas", "Livro com receitas variadas para todos os gostos.", 39.99, "Livros", "SIM"),
    ("Fone de ouvido bluetooth", "Fone de ouvido sem fio com boa qualidade de som.", 99.99, "Eletrônicos", "SIM"),
    ("Sabonete artesanal", "Sabonete natural com fragrância suave.", 5.99, "Higiene", "NÃO"),
    ("Planta suculenta", "Pequena planta suculenta para decorar o ambiente.", 14.99, "Decoração", "SIM"),
    ("Jogo de tabuleiro", "Jogo de tabuleiro clássico para toda a família.", 49.99, "Brinquedos", "SIM"),
    ("Chocolate artesanal", "Caixa de bombons artesanais com diversos sabores.", 25.90, "Alimentos", "NÃO"),
    ("Luminária de mesa", "Luminária de mesa com design moderno.", 79.99, "Decoração", "SIM"),
    ("Bolsa feminina", "Bolsa pequena e estilosa para o dia a dia.", 89.99, "Vestuário", "SIM"),
    ("Notebook Gamer", "Notebook potente para jogos com alta performance.", 899.99, "Eletrônicos", "SIM"),
    ("Smartphone topo de linha", "Smartphone com as últimas tecnologias e câmera profissional.", 999.99, "Eletrônicos", "SIM"),
    ("Bicicleta elétrica", "Bicicleta com motor elétrico para facilitar o transporte.", 699.99, "Esporte", "SIM"),
    ("Câmera fotográfica profissional", "Câmera DSLR com alta resolução e diversas lentes.", 599.99, "Fotografia", "SIM");

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET disponibilidade = "NÃO" WHERE id = 4;