CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_escola(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255)NOT NULL,
Idade int,
Serie VARCHAR(2),
Tamanho_Uniforme VARCHAR(1) NOT NULL,
Nota float,
PRIMARY KEY (id)
);

INSERT INTO tb_escola(Nome, Idade, Serie, Tamanho_Uniforme, Nota) VALUE ("Douglas", 6, "1°", "P", 6.0);
INSERT INTO tb_escola(Nome, Idade, Serie, Tamanho_Uniforme, Nota) VALUE ("Matheus", 7, "2°", "M", 5.0);
INSERT INTO tb_escola(Nome, Idade, Serie, Tamanho_Uniforme, Nota) VALUE ("Laís", 8, "4°", "P", 8.0);
INSERT INTO tb_escola(Nome, Idade, Serie, Tamanho_Uniforme, Nota) VALUE ("Marina", 7, "2°", "P", 9.0);
INSERT INTO tb_escola(Nome, Idade, Serie, Tamanho_Uniforme, Nota) VALUE ("José", 9, "5°", "G", 5.5);
INSERT INTO tb_escola(Nome, Idade, Serie, Tamanho_Uniforme, Nota) VALUE ("Roberto", 10, "7°", "G", 6.2);
INSERT INTO tb_escola(Nome, Idade, Serie, Tamanho_Uniforme, Nota) VALUE ("Graziela", 6, "1°", "P", 8.9);
INSERT INTO tb_escola(Nome, Idade, Serie, Tamanho_Uniforme, Nota) VALUE ("Letícia", 9, "5°", "P", 7.3);

SELECT * FROM tb_escola;

SELECT * FROM tb_escola WHERE Nota > 7.0;

SELECT * FROM tb_escola WHERE Nota < 7.0;

UPDATE tb_escola SET Nota = 5.8 WHERE id = 2;
