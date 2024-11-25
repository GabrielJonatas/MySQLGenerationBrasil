CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
	nome_completo VARCHAR(255) NOT NULL,
    cargo VARCHAR(120) NOT NULL,
    departamento VARCHAR(120),
    salario DECIMAL(6,2),
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome_completo, cargo, departamento, salario)
VALUES
("João da Silva", "Engenheiro DevOps Senior", "Infra", 5005.80),
("Maria Alves", "Analista de RH", "RH", 2570.20),
("Pedro Santos", "Gerente de Projetos", "Projetos", 9500.00),
("Ana Souza", "Desenvolvedora Full-Stack Pleno", "Desenvolvimento", 4400.80),
("Carlos Oliveira", "Contador", "Financeiro", 2200.80),
("Fernanda Pereira", "Assistente Administrativo", "Administrativo", 1800.90),
("Rodrigo Gomes", "Vendedor", "Vendas", 2400.00),
("Juliana Costa", "Estagiária", "Marketing", 1600.00),
("Lucas Santos", "Estagiário de desenvolvimento", "QA", 2500.00),
("Camila Silva", "Secretária", "Diretoria", 3000.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET cargo = "Desenvolvedor Back-end Júnior", departamento = "Desenvolvimento", salario = 3300 WHERE id = 9;