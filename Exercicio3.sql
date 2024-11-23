CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
    id_alunos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20),
    idade int,
    nota decimal(3,1),
    nivel VARCHAR(30),
    turma varchar(1)
);


INSERT INTO tb_alunos (nome, idade, nota, nivel, turma)
VALUES
    ("Claudia", 14, 8.5, "Fundamental", "A"),
    ("Heitor", 16, 6.0, "Médio", "B"),
    ("Maria", 13, 9.0, "Fundamental", "C"),
    ("Lucas", 15, 7.2, "Médio", "A"),
    ("Ana", 17, 5.8, "Médio", "B"),
    ("Rafael", 14, 10.0, "Fundamental", "C"),
    ("Juliana", 13, 6.5, "Fundamental", "A"),
    ("Gabriel", 16, 7.8, "Médio", "B");


SELECT * FROM tb_alunos;

CREATE TABLE tb_professores (
    id_professores INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(20),
    materia VARCHAR(50),
    nivel VARCHAR(40)
);


INSERT INTO tb_professores (nome, materia, nivel)
VALUES
    ("Gabriel", "Portugues", "Fundamental"),
    ("Laura", "Fisica", "Medio"),
    ("Carlos", "Matematica", "Superior"),
    ("Fernanda", "Historia", "Fundamental"),
    ("Mariana", "Quimica", "Medio"),
    ("Roberto", "Geografia", "Superior"),
    ("Patricia", "Biologia", "Fundamental"),
    ("Eduardo", "Ingles", "Medio"),
    ("Aline", "Literatura", "Superior");


SELECT * FROM tb_professores;
SELECT * FROM tb_alunos WHERE NOTA > 7;
SELECT * FROM tb_alunos WHERE NOTA < 7;
SELECT * FROM tb_alunos,tb_professores;
