CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
	matricula BIGINT AUTO_INCREMENT,
    nome_completo VARCHAR(150) NOT NULL,
    ano_escolar VARCHAR(8) NOT NULL,
	periodo VARCHAR(15),
    turma CHAR(1),
    media_notas DECIMAL(3,1) NOT NULL,
	PRIMARY KEY (matricula)
);

INSERT INTO tb_alunos(nome_completo, ano_escolar,periodo,turma,media_notas)
VALUES
	("Ana Carolina Silva", "1º ano", "Matutino", "A", 8.2),
    ("Bruno Henrique Oliveira", "5º ano", "Vespertino", "B", 7.5),
    ("Camila Ferreira Santos", "6º ano", "Integral", "C", 9.0),
    ("Daniel Souza Lima", "3º ano", "Matutino", "A", 6.8),
    ("Érica Almeida Pereira", "4º ano", "Vespertino", "B", 7.9),
    ("Fábio Rodrigues Gomes", "4º ano", "Integral", "C", 8.5),
    ("Gabriela Costa Santos", "1º ano", "Matutino", "A", 9.2),
    ("Henrique Silva Oliveira", "9º ano", "Vespertino", "B", 7.3),
    ("Isabela Martins Pereira", "8º ano", "Integral", "C", 5.8),
    ("João Pedro Gomes Lima", "7º ano", "Matutino", "A", 7.1),
    ("Juliana Santos Costa", "2º ano", "Vespertino", "B", 6.4),
    ("Leonardo Oliveira Silva", "5º ano","Integral", "C", 9.1);
  
SELECT * FROM tb_alunos WHERE media_notas > 7.0;

SELECT * FROM tb_alunos WHERE media_notas < 7.0;

UPDATE tb_alunos SET periodo = "INTEGRAL" WHERE matricula = 11;