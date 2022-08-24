CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE tb_RH(
id bigint auto_increment primary Key,
nome varchar (255),
empresa varchar (255),
cpf varchar (20),
setor varchar (200),
salario decimal (10,2)

);

SELECT * FROM tb_RH;
INSERT INTO tb_RH (nome,empresa,cpf,setor,salario) VALUES("Renan Lira","ROLDAO","468.543.680.00","Vendas",1350.00);
INSERT INTO tb_RH (nome,empresa,cpf,setor,salario) VALUES("Maikon","ROLDAO","458.654.880.07","Gerente",2500.00);
INSERT INTO tb_RH (nome,empresa,cpf,setor,salario) VALUES("Gabriel","ROLDAO","448.567.789.01","Caixa",1200.00);
INSERT INTO tb_RH (nome,empresa,cpf,setor,salario) VALUES("Matheus","ROLDAO","445.690.690.02","Açougue",2000.00);
INSERT INTO tb_RH (nome,empresa,cpf,setor,salario) VALUES("Eduardo","ROLDAO","468.541.693.03","Repositor",1100.00);

SELECT * FROM tb_RH WHERE salario >2000;
SELECT * FROM tb_RH WHERE salario <2000;