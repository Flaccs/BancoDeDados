CREATE DATABASE db_classes;
USE db_classes;
CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome_jogo VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes(nome_jogo, tipo) VALUE ("Mario", "Aventura");
SELECT *FROM tb_classes;

USE db_classes;
CREATE TABLE tb_personagens(
id BIGINT auto_increment,
nome VARCHAR(255) NOT NULL,
poder VARCHAR(255) NOT NULL,
ataque VARCHAR(255) NOT NULL,
defersa VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_personagens(nome, poder, ataque, defersa) VALUE ("Mario", "Martelo poderoso", "8000", "5000");
INSERT INTO tb_personagens(nome, poder, ataque, defersa) VALUE ("Luigi", "Voar", "6000", "4000");
INSERT INTO tb_personagens(nome, poder, ataque, defersa) VALUE ("Princesa Peach", "Transformações", "7000", "4000");
INSERT INTO tb_personagens(nome, poder, ataque, defersa) VALUE ("Yoshi Amarelo", "Pisão", "5000", "2000");

SELECT * FROM tb_personagens;

ALTER TABLE tb_classes ADD personagens_id bigint;

ALTER TABLE tb_classes ADD CONSTRAINT fk_classes_personagens
FOREIGN KEY (personagens_id) REFERENCES tb_personagens (id);

INSERT INTO tb_classes(
nome_jogo, tipo, personagens_id) values("Mario", "Encanador", 1);

INSERT INTO tb_classes(
nome_jogo, tipo, personagens_id) values("Luigi", "Encanador", 2);

INSERT INTO tb_classes(
nome_jogo, tipo, personagens_id) values("Princesa Peach", "Princesa", 3);

INSERT INTO tb_classes(
nome_jogo, tipo, personagens_id) values("Yoshi Amarelo", "Protetor", 4);

INSERT INTO tb_classes(
nome_jogo, tipo, personagens_id) values("Yoshi Verde", "Protetor", 5);

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nome, poder, ataque, defersa) VALUE ("Yoshi Vermelho", "Cuspir fogo", "4000", "2000");
INSERT INTO tb_personagens(nome, poder, ataque, defersa) VALUE ("Yoshi Azul", "Voar", "4000", "2000");
INSERT INTO tb_personagens(nome, poder, ataque, defersa) VALUE ("Bowser", "Força", "7000", "4000");
INSERT INTO tb_personagens(nome, poder, ataque, defersa) VALUE ("Toad", "Assistente", "3000", "2000");

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE ataque BETWEEN  1000 AND  2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

SELECT nome_jogo, tipo FROM tb_classes
INNER JOIN tb_personagens ON tb_personagens.id = tb_classes.personagens_id;  

SELECT nome_jogo, tipo FROM tb_classes
INNER JOIN tb_personagens ON tb_personagens.id = tb_classes.personagens_id;

SELECT nome_jogo, tipo FROM tb_classes
INNER JOIN tb_personagens ON tb_personagens.id = tb_classes.personagens_id WHERE tipo = 'protetor';
