CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR(255),
valor DECIMAL(6,2),
marca VARCHAR(255),
quantidade INT,
PRIMARY KEY(id)
);

INSERT INTO produtos(produto, valor, marca, quantidade)
VALUES
('Pó compacto', 40.00, 'Mac', 71),
('Corretivo', 60.00, 'Oceane', 9),
('Pó translúcido', 200.00, 'Nyx', 23),
('Base', 600.00, 'Dior', 63),
('Blush', 1000.00,'Rare Beauty', 2),
('Batom', 90.00, 'Nina Sescrets', 7),
('Gloss', 800.00, 'Fenty Beauty', 12),
('Contorno', 150.00, 'Payot', 73);

SELECT * FROM produtos WHERE valor > 500;
SELECT * FROM produtos WHERE valor < 500;

UPDATE produtos SET valor = 200.00 WHERE id = 6;


