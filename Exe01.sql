CREATE DATABASE db_colaboradores;
USE db_colaboradores;
CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Sobrenome VARCHAR(255) NOT NULL,
CPF VARCHAR(11) NOT NULL,
Idade smallint,
Sexo VARCHAR(1) NOT NULL,
Salário VARCHAR (4) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(Nome, Sobrenome, CPF, Idade, Sexo, Salário) VALUE ("Emma", "Oliveira", "48568935390", 31, "F", "6000");
INSERT INTO tb_colaboradores(Nome, Sobrenome, CPF, Idade, Sexo, Salário) VALUE ("Lucas", "Silva", "32554525330", 34, "M", "5000");
INSERT INTO tb_colaboradores(Nome, Sobrenome, CPF, Idade, Sexo, Salário) VALUE ("Matheus", "Lima", "58269358730", 28, "M", "8000");
INSERT INTO tb_colaboradores(Nome, Sobrenome, CPF, Idade, Sexo, Salário) VALUE ("Amélia", "Pereira", "68425868480", 26, "F", "9000");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE Salário > 2000;

SELECT * FROM tb_colaboradores WHERE Salário < 2000;

UPDATE tb_colaboradores SET Salário = 6000 WHERE id=1;
