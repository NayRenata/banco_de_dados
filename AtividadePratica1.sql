CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id_classes INT AUTO_INCREMENT PRIMARY key,
genero VARCHAR(20),
ataque BIGINT,
defesa BIGINT
);

INSERT INTO tb_classes(genero, ataque, defesa)
VALUES
 ("Aventura", 1500, 2500),
  ("Ação", 2000,5000),
  ("Fantasia", 1000,500),
  ("RPG", 200,5400),
  ("Comedia", 2100,100);
  
  
CREATE TABLE tb_personagens(
id_personagens INT AUTO_INCREMENT PRIMARY KEY,
nome varchar(30),
nivel VARCHAR(40),
habilidades VARCHAR(60),
data_criacao DATE,
id_classes INT,
CONSTRAINT fk_classes FOREIGN KEY (id_classes) REFERENCES tb_classes(id_classes)
);

INSERT INTO tb_personagens(nome,nivel,habilidades,data_criacao,id_classes)
VALUES
("Mario","Avançado","Transformação","1981-01-01",1),
("Luigi","Intermediario","Saltos","1981-01-01",2),
("Princesa Peach","Iniciante","Liderança","1985-01-01",3),
("Lae'Zel","Avançado","Forca","1990-01-01",4),
("Crash","Iniciante","Magica","1985-01-01",5),
("Toad","Intermediario","Agilidade","1985-01-01",NULL),
("Warior","Avançado","Magica","1992-01-01",NULL),
("Waluigi","Intermediario","Traicoeiro","2000-01-01",NULL);

-- Puxei as duas tabelas inteiras
SELECT * FROM tb_personagens
INNER JOIN tb_classes
on tb_classes.id_classes = tb_personagens.id_classes;

UPDATE tb_classes set genero = 'terror' where id_classes = 5;

-- Puxar o ataque que seja maior do que 2000

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

SELECT * FROM tb_personagens INNER JOIN tb_classes on tb_classes.id_classes = tb_personagens.id_classes;

SELECT * FROM tb_personagens INNER JOIN tb_classes on tb_classes.id_classes = tb_personagens.id_classes WHERE tb_classes.ataque >2000;

UPDATE tb_classes set defesa = 1001 where id_classes = 5;
UPDATE tb_classes set defesa = 2000 where id_classes = 1;

SELECT * FROM tb_personagens INNER JOIN tb_classes on tb_classes.id_classes = tb_personagens.id_classes WHERE tb_classes.defesa BETWEEN 1000 and 2000;

SELECT * FROM tb_personagens INNER JOIN tb_classes on tb_classes.id_classes = tb_personagens.id_classes WHERE tb_personagens.nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes on tb_classes.id_classes = tb_personagens.id_classes;

SELECT * FROM tb_personagens INNER JOIN tb_classes on tb_classes.id_classes = tb_personagens.id_classes WHERE tb_personagens.nivel LIKE "Iniciante";








  