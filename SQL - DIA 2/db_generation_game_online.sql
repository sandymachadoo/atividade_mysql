CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id INT AUTO_INCREMENT,
    funcao VARCHAR(50),
    nivel INT,
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    id_classe INT,
    ataque BIGINT,
    defesa BIGINT,
    PRIMARY KEY(id)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (id_classe) REFERENCES tb_classes(id);

INSERT INTO tb_classes(funcao, nivel)
VALUES
('Rainha do Gelo', 18 ),
('Fada do Reino', 22),
('Arqueira', 20),
('Bruxa do Reino', 25),
('Sereia mortal', 24);

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nome,id_classe,ataque,defesa)
VALUES
('Ice Woman', 1, 2500, 1200),  
('Bloom', 2, 2300, 1500),     
('Cece', 3, 2100, 1700),     
('Mystic', 4, 1900, 800),    
('Aquamarine', 5, 2200, 2000),
('Crystal', 1, 1800, 900),   
('Stella', 2, 2000, 1400),    
('Coraline', 3, 2600, 2100);  

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE ataque < 2000;

SELECT * FROM tb_personagens WHERE defesa > 2000;
SELECT * FROM tb_personagens WHERE defesa < 2000;

SELECT * FROM tb_personagens WHERE nome = "%C%";

SELECT nome, tb_classes.funcao, nivel, ataque, defesa,tb_classes.nivel
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT *
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT nome, tb_classes.funcao, nivel, ataque, defesa,tb_classes.nivel
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.id = 4;