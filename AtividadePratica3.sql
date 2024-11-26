CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
id_categoria INT AUTO_INCREMENT PRIMARY key,
nome VARCHAR(30),
descricao VARCHAR(100)
);

INSERT INTO tb_categoria(nome, descricao) 
VALUES
('Analgésicos', 'Medicamentos para alívio da dor'),
('Antibióticos', 'Medicamentos para combater infecções bacterianas'),
('Antiinflamatórios', 'Medicamentos para reduzir a inflamação'),
('Antialérgicos', 'Medicamentos para tratar reações alérgicas'),
('Suplementos', 'Produtos para complementar a alimentação e melhorar a saúde');

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos(
id_produtos INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30),
descricao VARCHAR(50),
preco DECIMAL(7,2),
validade DATE,
id_categoria INT,
CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_produtos(nome, descricao,preco, validade,id_categoria)
VALUE

('Aspirina 500mg', 'Analgésico e anti-inflamatório', 10.50, '2025-12-31',1),
    ('Paracetamol 750mg', 'Antitérmico e analgésico', 8.90, '2025-11-30',3),
    ('Ibuprofeno 400mg', 'Antiinflamatório e analgésico', 12.00, '2026-01-15',3),
    ('Dipirona 500mg', 'Analgésico e antitérmico', 7.80, '2024-09-20',2),
    ('Loratadina 10mg', 'Antialérgico', 15.50, '2026-03-10',4),
    ('Omeprazol 20mg', 'Inibidor da bomba de prótons', 65.00, '2026-06-30',5),
    ('Amoxicilina 500mg', 'Antibiótico de amplo espectro', 75.00, '2025-08-15',2),
    ('Cloridrato de Sertralina 50mg', 'Antidepressivo', 78.00, '2025-05-01',5);
    
    SELECT * FROM tb_produtos;


SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_produtos.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_produtos.id_categoria  WHERE tb_produtos.preco > 50.00;

SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_produtos.id_categoria WHERE tb_produtos.preco BETWEEN 5.00 and 60.00;

SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_produtos.id_categoria WHERE tb_produtos.nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_produtos.id_categoria;






