CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
  id BIGINT AUTO_INCREMENT,
  nome_categoria VARCHAR(50) NOT NULL,
  area VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE tb_cursos (
  id BIGINT AUTO_INCREMENT,
  categoriasID BIGINT,
  nome_curso VARCHAR(100) NOT NULL,
  preco DECIMAL(6,2) NOT NULL,
  descricao TEXT,
  nivel VARCHAR(50),
  PRIMARY KEY (id),
  FOREIGN KEY (categoriasID) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, area) 
VALUES
	("Tecnologia da Informação", "Tecnologia"),
	("Design e Multimídia", "Criatividade"),
	("Negócios e Empreendedorismo", "Negócios"),
	("Idiomas", "Educação"),
	("Desenvolvimento Pessoal", "Autoconhecimento"),
	("Marketing Digital", "Negócios"),
	("Culinária", "Gastronomia"),
	("Saúde e Bem-Estar", "Saúde"),
	("Artes e Fotografia", "Artes"),
	("Finanças e Investimentos", "Economia");

INSERT INTO tb_cursos (categoriasID, nome_curso, preco, descricao, nivel) 
VALUES
	(1, "Introdução à Programação com Python", 850.00, "Curso básico para aprender lógica de programação e Python.", "Iniciante"),
	(1, "Desenvolvimento Web com HTML, CSS e JavaScript", 1200.00, "Crie páginas web interativas com as principais tecnologias do mercado.", "Intermediário"),
	(1, "Data Science e Machine Learning com Python", 1800.00, "Domine análise de dados e criação de modelos preditivos.", "Avançado"),
	(2, "Design de Interfaces com Figma", 950.00, "Aprenda a criar protótipos para aplicativos e websites.", "Intermediário"),
	(2, "Edição de Vídeos com Adobe Premiere", 1400.00, "Curso completo de edição de vídeos para criadores de conteúdo.", "Avançado"),
	(3, "Criação de Startups do Zero", 1500.00, "Planeje, desenvolva e lance sua startup no mercado.", "Intermediário"),
	(3, "Gestão Financeira para Pequenos Negócios", 600.00, "Controle o fluxo de caixa e otimize os lucros do seu negócio.", "Iniciante"),
	(4, "Inglês para Conversação", 700.00, "Aprenda a se comunicar em inglês em situações do dia a dia.", "Iniciante"),
	(4, "Francês Básico para Viagens", 550.00, "Curso introdutório para quem deseja viajar e explorar a cultura francesa.", "Iniciante"),
	(5, "Mindfulness e Meditação", 650.00, "Técnicas práticas para reduzir o estresse e melhorar o foco.", "Iniciante"),
	(5, "Liderança e Gestão de Equipes", 1300.00, "Desenvolva habilidades de liderança para ambientes corporativos.", "Avançado"),
	(6, "SEO e Estratégias de Marketing de Conteúdo", 1000.00, "Otimize seu site e aumente sua presença digital.", "Intermediário"),
	(6, "Anúncios Patrocinados no Google Ads", 1250.00, "Crie campanhas eficazes no Google Ads para aumentar suas vendas.", "Intermediário"),
	(7, "Cozinha Italiana para Iniciantes", 750.00, "Aprenda a preparar pratos tradicionais italianos.", "Iniciante"),
	(8, "Treinamento Funcional em Casa", 500.00, "Práticas de exercícios funcionais para fazer em casa.", "Iniciante"),
	(9, "Fotografia Digital para Amadores", 800.00, "Descubra como capturar imagens incríveis com sua câmera ou smartphone.", "Iniciante"),
	(10, "Investindo na Bolsa de Valores", 2000.00, "Aprenda estratégias para investir e obter melhores retornos financeiros.", "Avançado");

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco > 600.00 AND preco < 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J%";

SELECT *
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoriasID = tb_categorias.id;

SELECT *
FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoriasID = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Idiomas";