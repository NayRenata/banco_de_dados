CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id_categoria INT AUTO_INCREMENT PRIMARY key,
tipo VARCHAR(20),
descricao VARCHAR(50)
);

INSERT INTO tb_categoria(tipo, descricao)
VALUE
 ("Vegetariana", "Pizza salgada"),
  ("Vegana", "Pizza salgada" ),
  ("Tradicional", "Pizza salgadas"),
  ("Doce", "Pizza Doce"),
  ("Surpresa ","Pizza Agridoce");
  

CREATE TABLE tb_pizzas(
id_pizzas INT AUTO_INCREMENT PRIMARY KEY,
nome varchar(30),
preco DECIMAL(7,2),
validade DATE,
id_categoria INT,
CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_pizzas(nome,preco,validade,id_categoria)
VALUE

("Vegetariana da casa", 45.00, "2024-11-30", 1),
("Vegana ao pesto", 58.00, "2024-11-29", 2),
("Calabresa com catupiry", 46.00, "2024-12-15", 3),
("Doce de Leite com Banana", 50.00, "2024-12-05",4),
("Pizza de Frango com Catupiry", 48.00, "2024-12-10", 3),
("Pizza de Romeu e Julieta", 90.00, "2024-12-18", 4),
("Pizza de Chocolate com Morango", 90.00, "2024-12-18", 4),
("Quatro Queijos Especial", 100.00, "2024-12-20", 3),
("Margherita Clássica", 70.00, "2024-12-01", 3);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_pizzas.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_pizzas.id_categoria WHERE tb_pizzas.preco > 45.00;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_pizzas.id_categoria WHERE tb_pizzas.preco BETWEEN 50.00 and 100.00;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_pizzas.id_categoria WHERE tb_pizzas.nome LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_pizzas.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_pizzas.id_categoria WHERE tb_categoria.tipo LIKE "%Tradicional%";






