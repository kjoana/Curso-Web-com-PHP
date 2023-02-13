CREATE DATABASE escola_curso;

USE  escola_curso;

CREATE TABLE  alunos (
	id_alunos INT NOT NULL,
	PRIMARY KEY (id_alunos));
    
ALTER TABLE alunos
ADD COLUMN nome VARCHAR(100) NOT NULL AFTER id_alunos,
ADD COLUMN data_nascimento DATE NOT NULL AFTER nome,
ADD COLUMN endereco VARCHAR(255) NOT NULL AFTER data_nascimento,
ADD COLUMN cidade VARCHAR(100) NOT NULL AFTER endereco,
ADD COLUMN estado VARCHAR(2) NOT NULL AFTER cidade,
ADD COLUMN cpf VARCHAR(11) NOT NULL AFTER estado;
  
CREATE TABLE curso (
	id_curso INT NOT NULL,
	PRIMARY KEY (id_curso));

ALTER TABLE curso 
ADD COLUMN nome VARCHAR(50) NOT NULL AFTER id_curso;

 CREATE TABLE notas (
	id_notas INT NOT NULL,
	PRIMARY KEY (id_notas));
    
ALTER TABLE notas
ADD COLUMN descricao_atividade VARCHAR (100) NOT NULL AFTER id_notas,
ADD COLUMN valor_nota DECIMAL(5,2) NOT NULL AFTER descricao_atividade;

/*
DROP TABLE nome_tabela : apaga a tabela
*/