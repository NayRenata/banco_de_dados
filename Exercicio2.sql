CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_cadastro(
id_produtos bigint auto_increment,
nome varchar(30),
preco decimal(7,2),
categoria varchar(40),
quantidade bigint,
ativo boolean,
primary key(id_produtos)
);

SELECT * FROM tb_cadastro;

INSERT INTO tb_cadastro (nome,preco,categoria,quantidade,ativo)
VALUES 
("Camiseta Oversize",100.00,"Roupa",1000,true),
("Calça jeans",150.00,"Roupas",500,true),
("Tenis Vans",400.00,"Calçados",200,true),
("Headphone",200.00,"Eletronicos",50,true),
("Smartphone",2100.00,"Eletronicos",700,true),
("Camiseta basic",50.00,"Roupas",2000,true),
("Notebook",5500.00,"Eletronicos",300,true),
("Arvore de Natal",130.00,"Enfeites",40,false);


SELECT * FROM tb_cadastro;

SELECT * FROM tb_cadastro WHERE preco > 500;

SELECT * FROM tb_cadastro WHERE preco < 500;

UPDATE tb_cadastro set nome = "mouse" where id_produtos = 8;

Select * FROM tb_cadastro;
