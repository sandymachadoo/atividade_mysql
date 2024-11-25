CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(20),
PRIMARY KEY(id)
);

CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(20),
    valor DECIMAL(5,2),
    tamanho VARCHAR(20),
    id_sabor BIGINT,
    PRIMARY KEY(id)
);

ALTER TABLE tb_pizza ADD CONSTRAINT FK_pizza_categoria
FOREIGN KEY (id_sabor) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias(categoria)
VALUES
 ('Salgada'), 
 ('Doce');

INSERT INTO tb_pizza(sabor, tamanho, valor, id_sabor)
VALUES 
('Calabresa', 'Grande', 50.00, 1),     
('Marguerita', 'Média', 45.00, 1),      
('Chocolate branco', 'Grande', 55.00, 2),     
('Quatro Queijos', 'Grande', 60.00, 1), 
('Brócolis', 'Média', 48.00, 1),      
('Frango com Catupiry', 'Grande', 65.00, 1), 
('Nutella com Morango', 'Média', 70.00, 2), 
('Vegetariana', 'Grande', 52.00, 1);   

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE valor > 45;
SELECT * FROM tb_pizza WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizza WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizza INNER JOIN tb_categorias
ON tb_pizza.id_sabor = tb_categorias.id;

SELECT *
FROM tb_pizza INNER JOIN tb_categorias
ON tb_pizza.id_sabor = tb_categorias.id
WHERE tb_categorias.id = 2;