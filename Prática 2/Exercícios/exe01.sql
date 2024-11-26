CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    estilo_combate VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)	
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    classeID BIGINT,
    nome_personagem VARCHAR(120) NOT NULL,
    equipamento VARCHAR(120),
    dano INT NOT NULL,
    defesa INT NOT NULL,
    vida INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classeID) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, estilo_combate)
VALUES
	("Guerreiro", "Corpo a Corpo"),
	("Arqueiro", "Longa Distância"),
	("Mago", "Magia"),
	("Ladino", "Furtividade"),
	("Paladino", "Híbrido");

INSERT INTO tb_personagens (classeID, nome_personagem, equipamento, dano, defesa, vida)
VALUES
	(1, "Thogar, o Imbatível", "Espada Longa", 5000, 4500, 24000),
	(1, "Bryn, o Escudo Vivo", "Martelo de Guerra", 1500, 5000, 25000),
	(2, "Lyria, a Flecha Certeira", "Arco Longo", 3000, 2000, 20000),
	(2, "Kael, o Rastreador", "Besta Leve", 3500, 1800, 19000),
	(3, "Elarion, o Arcano", "Cajado Elemental", 6000, 500, 15000),
	(3, "Viona, a Conjuradora", "Orbe Mágico", 4500, 700, 14000),
	(3, "Zyria, a Mestra das Chamas", "Bastão de Fogo", 4800, 600, 14500),
	(4, "Zeth, a Sombra", "Adagas Envenenadas", 3000, 2000, 18000),
	(4, "Ryn, o Ladrão das Sombras", "Adaga Dupla", 5800, 1800, 17000),
	(5, "Eldon, o Protetor Sagrado", "Martelo Divino", 5500, 4500, 23000),
	(5, "Aran, o Guardião Luminoso", "Espada Sagrada", 5800, 4300, 22500),
	(5, "Celya, a Luz da Justiça", "Massa Estelar", 1700, 4400, 22000);

SELECT * FROM tb_personagens WHERE dano > 2000;

SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;

SELECT * FROM  tb_personagens WHERE nome_personagem LIKE "C%";

SELECT tb_personagens.id, nome_personagem, equipamento, dano, defesa, vida, tb_classes.nome_classe, tb_classes.estilo_combate
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeID = tb_classes.id;

SELECT tb_personagens.id, nome_personagem, equipamento, dano, defesa, vida, tb_classes.nome_classe, tb_classes.estilo_combate
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classeID = tb_classes.id 
WHERE tb_classes.nome_classe = "Arqueiro";
