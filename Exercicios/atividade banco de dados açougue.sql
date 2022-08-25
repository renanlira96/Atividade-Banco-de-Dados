CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id bigint auto_increment primary key,
tamanho varchar (255),
peso decimal (10,3)
);

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
carne_bovina varchar(255),
carne_suina varchar (255),
aves varchar (255),
peixes varchar (255),
categoria_id bigint,
preco decimal (10,2),

FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(tamanho,peso) VALUES("Pequeno",1.000);
INSERT INTO tb_categorias(tamanho,peso) VALUES("Médio",2.100);
INSERT INTO tb_categorias(tamanho,peso) VALUES("Grande",5.100);

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(carne_bovina,carne_suina,aves,peixes,preco,categoria_id) VALUES("Costela de boi","Bisteca de Porco","Peito de Frango","Filé de Tilapia",50.00,3);
INSERT INTO tb_produtos(carne_bovina,carne_suina,aves,peixes,preco,categoria_id) VALUES("Filé Mignon","Costela de Porco","Asa de Frango","Camarão Congelado",250.00,3);
INSERT INTO tb_produtos(carne_bovina,carne_suina,aves,peixes,preco,categoria_id) VALUES("Cupim","Joelho de Porco","Coxa e sobrecoxa","Atum",150.00,2);
INSERT INTO tb_produtos(carne_bovina,carne_suina,aves,peixes,preco,categoria_id) VALUES("Língua de Boi","Lombo de Porco","Pé de Galinha","Salmão",60.00,2);
INSERT INTO tb_produtos(carne_bovina,carne_suina,aves,peixes,preco,categoria_id) VALUES("Coxão Mole","Paleta de Porco","Cabeça de Frango","Sardinha",90.00,1);
INSERT INTO tb_produtos(carne_bovina,carne_suina,aves,peixes,preco,categoria_id) VALUES("Coxão Duro","Orelha de Porco","Sambiquiria","Lula",200.00,1);
INSERT INTO tb_produtos(carne_bovina,carne_suina,aves,peixes,preco,categoria_id) VALUES("Maminha","Pancetta de Porco","Fígado de Frango","Peixe Inteiro",110.00,2);
INSERT INTO tb_produtos(carne_bovina,carne_suina,aves,peixes,preco,categoria_id) VALUES("Mocotó","Barriga de Porco","Coração de Galinha","Cabeça de Peixe",50.00,3);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco < 50;
SELECT * FROM tb_produtos WHERE preco >=  50  AND preco <=  100;
SELECT * FROM tb_produtos WHERE carne_suina LIKE "%C%";
SELECT * FROM tb_produtos WHERE aves LIKE "%C%";
SELECT * FROM tb_produtos WHERE peixes LIKE "%C%";
SELECT * FROM tb_produtos WHERE carne_bovina LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias .id = tb_produtos . categoria_id;
SELECT peixes FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias .id= tb_produtos. categoria_id;


