CREATE DATABASE db_feira;
USE db_feira;
CREATE TABLE tb_feira (
id BIGINT AUTO_INCREMENT,
Fruta VARCHAR(255) NOT NULL,
Cor VARCHAR(255) NOT NULL,
Tamanho VARCHAR(255) NOT NULL,
Quantidade int,
Preco_R$ DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_feira(Fruta, Cor, Tamanho, Quantidade, Preco_R$) VALUE ("Morango", "Vermelho", "Pequeno", 2, 20.00);
INSERT INTO tb_feira(Fruta, Cor, Tamanho, Quantidade, Preco_R$) VALUE ("Pera", "Verde", "Pequeno", 4, 15.00);
INSERT INTO tb_feira(Fruta, Cor, Tamanho, Quantidade, Preco_R$) VALUE ("Abacate", "Verde", "Médio", 2, 05.00);
INSERT INTO tb_feira(Fruta, Cor, Tamanho, Quantidade, Preco_R$) VALUE ("Maçã", "Vermelho", "Pequeno", 6, 08.00);
INSERT INTO tb_feira(Fruta, Cor, Tamanho, Quantidade, Preco_R$) VALUE ("Limão", "Verde", "Pequeno", 7, 04.00);
INSERT INTO tb_feira(Fruta, Cor, Tamanho, Quantidade, Preco_R$) VALUE ("Melancia", "Vermelho", "Grande", 1, 20.00);
INSERT INTO tb_feira(Fruta, Cor, Tamanho, Quantidade, Preco_R$) VALUE ("Uva", "Verde", "Pequeno", 3, 15.00);
INSERT INTO tb_feira(Fruta, Cor, Tamanho, Quantidade, Preco_R$) VALUE ("Kiwi", "Verde", "Pequeno", 4, 20.00);

SELECT * FROM tb_feira;

SELECT * FROM tb_feira WHERE Preco_R$ > 500;

SELECT * FROM tb_feira WHERE Preco_R$ < 500;

UPDATE tb_FEIRA SET Preco_R$ = 10 WHERE id=3;
