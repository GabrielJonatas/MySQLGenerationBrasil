CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
  id BIGINT AUTO_INCREMENT,
  nome_categoria VARCHAR(50) NOT NULL,
  tipo VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
  id BIGINT AUTO_INCREMENT,
  categoriasID BIGINT,
  nome_produto VARCHAR(100) NOT NULL,
  preco DECIMAL(5,2) NOT NULL,
  descricao TEXT,
  dataValidade DATE NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categoriasID) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, tipo) 
VALUES	
	("Medicamentos", "Saúde"),
	("Vitaminas e Suplementos", "Saúde"),
	("Cuidados Pessoais", "Higiene"),
	("Cosméticos", "Beleza"),
	("Primeiros Socorros", "Emergências"),
	("Infantil", "Cuidado Infantil"),
	("Equipamentos Médicos", "Acessórios"),
	("Saúde Bucal", "Higiene");

INSERT INTO tb_produtos (categoriasID, nome_produto, preco, descricao, dataValidade) 
VALUES
	(1, "Paracetamol 500mg - 20 Comprimidos", 12.50, "Medicamento para alívio de febre e dores leves.", "2025-12-01"),
	(1, "Ibuprofeno 400mg - 30 Cápsulas", 18.90, "Anti-inflamatório e analgésico.", "2025-10-15"),
	(2, "Vitamina C 1g - 60 Comprimidos", 25.00, "Suplemento para reforçar o sistema imunológico.", "2026-03-10"),
	(2, "Ômega 3 - 120 Cápsulas", 45.90, "Suplemento para saúde cardiovascular.", "2026-08-01"),
	(3, "Sabonete Líquido Antisséptico 200ml", 15.00, "Sabonete para limpeza e proteção da pele.", "2025-06-15"),
	(3, "Desodorante Antitranspirante 150ml", 10.50, "Desodorante com proteção 48 horas.", "2025-04-30"),
	(4, "Creme Hidratante Facial 50ml", 30.00, "Hidratação profunda para todos os tipos de pele.", "2026-01-01"),
	(5, "Curativo Adesivo Estéril - 10 Unidades", 8.90, "Curativos para pequenos cortes e arranhões.", "2027-01-01"),
	(5, "Gaze Estéril 10x10cm - Pacote com 10", 12.50, "Gazes estéreis para curativos.", "2027-01-01"),
	(6, "Fralda Descartável Tamanho M - 20 Unidades", 45.90, "Fraldas para conforto e proteção do bebê.", "2025-07-01"),
	(7, "Termômetro Digital", 65.00, "Equipamento para medir temperatura corporal.", "2028-01-01"),
	(8, "Creme Dental com Flúor 90g", 8.00, "Creme dental para proteção contra cáries.", "2026-02-28");

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco > 5.00 AND preco < 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE 'C%';

SELECT tb_produtos.id, nome_produto, preco, descricao, dataValidade, tb_categorias.nome_categoria, tb_categorias.tipo
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id;

SELECT tb_produtos.id, nome_produto, preco, descricao, dataValidade, tb_categorias.nome_categoria, tb_categorias.tipo
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id
WHERE tb_categorias.tipo = 'Higiene';
