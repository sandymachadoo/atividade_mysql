
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT,
    categoria VARCHAR(20),
    descricao TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    produto VARCHAR(20),
    estoque INT,  
    id_categoria BIGINT,
    valor DECIMAL(5,2),
    PRIMARY KEY(id)
);

ALTER TABLE tb_produtos ADD CONSTRAINT FK_produtos_categoria
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias(categoria, descricao)
VALUES
 ('Medicamento', 'Produtos para tratamento de saúde'), 
('Cosmético', 'Produtos para cuidados com a pele e beleza');

INSERT INTO tb_produtos(produto, estoque, id_categoria, valor)
VALUES 
('Paracetamol', 72, 1, 10.50),
('Vitamina C', 19, 1, 25.00),
('Protetor Solar', 90, 1, 80.00),
('Sabonete Líquido', 20, 2, 15.00),
('Fralda Infantil', 100, 1, 40.00),
('Antisséptico Bucal', 20, 1, 20.00),
('Base Facial', 60, 2, 70.00),
('Demaquilante', 45, 2, 30.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_ WHERE sabor LIKE "%C%";

SELECT *
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT *
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.id = 2;

