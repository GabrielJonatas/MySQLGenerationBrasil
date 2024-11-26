CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
  quantidade INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categoriasID) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, tipo) 
VALUES
	("Cimento e Argamassa", "Materiais Básicos"),
	("Tintas e Acessórios", "Acabamento"),
	("Ferramentas Manuais", "Ferramentas"),
	("Ferramentas Elétricas", "Ferramentas"),
	("Madeiras e Compensados", "Estrutura"),
	("Tubos e Conexões", "Hidráulica"),
	("Fios e Cabos", "Elétrica"),
	("Portas e Janelas", "Estrutura"),
	("Parafusos e Fixadores", "Fixação"),
	("EPI (Equipamentos de Proteção Individual)", "Segurança");

INSERT INTO tb_produtos (categoriasID, nome_produto, preco, descricao, quantidade) 
VALUES
	(1, "Cimento CP-II 50kg", 35.90, "Cimento de alta resistência para construção geral.", 200),
	(1, "Argamassa AC-I 20kg", 19.90, "Argamassa para assentamento de cerâmicas.", 150),
	(2, "Tinta Acrílica Fosca 18L", 239.90, "Tinta para paredes internas e externas.", 50),
	(2, "Rolo de Pintura 23cm", 15.90, "Rolo para aplicação uniforme de tinta.", 120),
	(3, "Martelo Unha 500g", 29.90, "Martelo de aço forjado com cabo emborrachado.", 80),
	(3, "Chave de Fenda 6mm", 9.50, "Chave de fenda para reparos gerais.", 100),
	(4, "Furadeira Impacto 650W", 199.90, "Furadeira para uso doméstico e profissional.", 30),
	(4, "Parafusadeira Elétrica 12V", 349.90, "Parafusadeira prática e eficiente.", 25),
	(5, "Compensado Naval 15mm", 120.00, "Compensado resistente à umidade.", 40),
	(5, "Tábua de Pinus 3m", 65.00, "Tábua de madeira para projetos estruturais.", 60),
	(6, "Joelho PVC 90º 50mm", 5.90, "Conexão de PVC para sistemas hidráulicos.", 300),
	(6, "Tubo PVC 3m 50mm", 19.90, "Tubo para instalações hidráulicas diversas.", 150),
	(7, "Cabo Elétrico 4mm 100m", 259.90, "Cabo elétrico para instalações residenciais.", 20),
	(8, "Porta de Madeira Maciça", 499.90, "Porta para interiores, resistente e durável.", 10),
	(9, "Parafuso Autoatarraxante 4x50mm", 18.90, "Parafusos para fixação em madeira e metal.", 500),
	(10, "Capacete de Segurança CA 12345", 39.90, "Capacete para proteção em ambientes de construção.", 70);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco > 70.00 AND preco < 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "C%";

SELECT tb_produtos.id, nome_produto, preco, descricao, quantidade, tb_categorias.nome_categoria, tb_categorias.tipo
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id;

SELECT tb_produtos.id, nome_produto, preco, descricao, quantidade, tb_categorias.nome_categoria, tb_categorias.tipo
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoriasID = tb_categorias.id
WHERE tb_categorias.tipo = "Hidráulica";
