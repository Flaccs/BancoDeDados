CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tipo, tamanho) VALUE ("Salgada", "Média");
SELECT *FROM tb_categorias;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(255) NOT NULL,
preco float,
nome VARCHAR(255) NOT NULL,
telefone VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_pizzas(sabor, preco, nome, telefone) VALUE ("Calabresa", 20.00, "Lucas", "11 92589-1528");
SELECT *FROM tb_pizzas;

ALTER TABLE tb_pizzas MODIFY preco DECIMAL(6,2);

ALTER TABLE tb_categorias ADD pizzas_id bigint;

ALTER TABLE tb_categorias ADD CONSTRAINT fk_categorias_pizzas 
FOREIGN KEY (pizzas_id) REFERENCES tb_pizzas (id);

INSERT INTO tb_categorias(tipo, tamanho, pizzas_id) VALUES ("Salgada", "Grande", 1);
INSERT INTO tb_categorias(tipo, tamanho, pizzas_id) VALUES ("Salgada", "Média", 2);
INSERT INTO tb_categorias(tipo, tamanho, pizzas_id) VALUES ("Salgada", "Broto", 3);
INSERT INTO tb_categorias(tipo, tamanho, pizzas_id) VALUES ("Salgada", "Grande", 4);
INSERT INTO tb_categorias(tipo, tamanho, pizzas_id) VALUES ("Salgada", "Média", 5);

INSERT INTO tb_pizzas(sabor, preco, nome, telefone) VALUES ("Marguerita", 21.00, "Luan", "11 98596-4714");
INSERT INTO tb_pizzas(sabor, preco, nome, telefone) VALUES ("Portuguesa", 20.00, "Luna", "11 94852-8596");
INSERT INTO tb_pizzas(sabor, preco, nome, telefone) VALUES ("Brócolis", 15.00, "Bianca", "11 98545-5855");
INSERT INTO tb_pizzas(sabor, preco, nome, telefone) VALUES ("Marguerita", 21.00, "Clara", "11 98596-4714");
INSERT INTO tb_pizzas(sabor, preco, nome, telefone) VALUES ("Baiana", 50.00, "Julha", "11 98596-4714");
INSERT INTO tb_pizzas(sabor, preco, nome, telefone) VALUES ("Quatro queijos", 21.00, "Maria", "11 98596-4714");
INSERT INTO tb_pizzas(sabor, preco, nome, telefone) VALUES ("Búfalo", 45.00, "Fernando", "11 98589-5477");
INSERT INTO tb_pizzas(sabor, preco, nome, telefone) VALUES ("Marguerita", 21.00, "Mathues", "11 98594-8578");

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN  50.00 AND  100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE '%m%';

SELECT tipo, tamanho FROM tb_categorias
INNER JOIN tb_pizzas ON tb_pizzas.id = tb_categorias.pizzas_id;  

SELECT tipo, tamanho FROM tb_categorias
INNER JOIN tb_pizzas ON tb_pizzas.id = tb_categorias.pizzas_id WHERE tamanho = 'Grande';
