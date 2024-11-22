CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE colaboradores(
  id BIGINT AUTO_INCREMENT,
  nome VARCHAR(255),
  data_contratacao DATE,
  salario DECIMAL(6,2),
  cargo VARCHAR(255),
  PRIMARY KEY(id)
);

INSERT INTO colaboradores(nome, data_contratacao, salario, cargo)
VALUES 
('Sandy', '2024-08-09', 4000.00, 'Desenvolvedora Back-end'),
('Marcos', '2024-02-12', 4500.00, 'Desenvolvedor Back-end'),
('Lais', '2024-01-20', 1000.00, 'Desenvolvedora Front-End'),
('Apolo', '2024-02-18', 1500.00, 'Analista de RH'),
('Plinio', '2024-05-30', 7000.00, 'Cientista de Dados');

SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 5000.00 WHERE id = 5;

SELECT * FROM colaboradores;

  
  
  
  
  
  
  