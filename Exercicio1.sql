CREATE DATABASE db_recursoshumanos;
USE db_recursoshumanos;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(30) not null,
cargo varchar(20) not null,
departamento varchar(20) not null,
data_admissao date,
ativo boolean,
salario decimal(6,2),
primary key(id)
);

select * from tb_funcionarios;

INSERT INTO tb_funcionarios (nome, cargo, departamento, data_admissao, ativo, salario) 
VALUES 
  ("Nayara", "Fullstack Java", "Tecnologia", "2025-01-30", true, 2000.00),
  ("Carol", "Analista de fraude", "Tecnologia", "2013-01-30", true, 2500.00),
  ("Paulo", "Bancario", "Atendimento", "2010-06-30", true, 1500.00),
  ("Regina", "Gerente", "Tecnologia", "2013-01-30", false, 5000.00),
  ("Kaio", "Cabelereiro", "Beleza", "2010-04-30", true, 1000.00),
  ("Fulano", "Palhaco", "Circo", "2024-01-30", false, 1500.00),
  ("Ciclano", "Palhaco2", "Circo", "2024-01-30", false, 500.00);

SELECT * FROM tb_funcionarios where salario >2000.00;
SELECT * FROM tb_funcionarios where salario <2000.00;

UPDATE tb_funcionarios set salario = 2500.00 where id = 1;
SELECT * FROM tb_funcionarios where salario >2000.00;