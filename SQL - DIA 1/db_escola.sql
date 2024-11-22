CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE alunos(
id BIGINT AUTO_INCREMENT,
matricula INT,
nome VARCHAR(255),
turma VARCHAR(255),
nota DECIMAL(4,2),
PRIMARY KEY(id)
);

INSERT INTO alunos(nome, matricula, turma, nota)
VALUES
('Catarina', 123, 'Terceiro ano', 5),
('Amy', 456, 'Oitavo ano', 10),
('Theo', 789, 'Quinto ano', 4.5),
('Anakin', 876, 'Segundo ano', 1.0),
('Rony', 543,'Sexto ano', 2.5),
('Susana', 149, 'Oitavo ano', 10),
('Camila', 098, 'Quinto ano', 9.2),
('Paulo', 103, 'Segundo ano', 7.5);

SELECT * FROM alunos WHERE nota > 7.0;
SELECT * FROM alunos WHERE nota < 7.0;

UPDATE alunos SET nota = 6.2 WHERE id = 3;

SELECT * FROM alunos;

