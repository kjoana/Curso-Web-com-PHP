/*criando a base */
CREATE DATABASE escola_curso;

USE  escola_curso;

/*criando tabela*/
CREATE TABLE  alunos (
	id_alunos INT NOT NULL,
	PRIMARY KEY (id_alunos));
    
/*alterando a tabela*/
ALTER TABLE alunos
ADD COLUMN nome VARCHAR(100) NOT NULL AFTER id_alunos,
ADD COLUMN data_nascimento DATE NOT NULL AFTER nome,
ADD COLUMN endereco VARCHAR(255) NOT NULL AFTER data_nascimento,
ADD COLUMN cidade VARCHAR(100) NOT NULL AFTER endereco,
ADD COLUMN estado VARCHAR(2) NOT NULL AFTER cidade,
ADD COLUMN cpf VARCHAR(11) NOT NULL AFTER estado;
 
/*inserindo valores*/
INSERT INTO alunos 
VALUES (1, 'Joana', '2004-06-30', 'Rua Coronel Januario', 'Borogodó', 'CE', '62523847954');

/*deletando dado de uma tabela*/
DELETE FROM alunos 
WHERE id_alunos = 1;


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

/*Fazendo consltas */

/* SELECT SIMPLES
SELECT nome_dos_campos FROM nome_tabela
SELECT * FROM nome_tabela -- o * indica que são todos os campos da tabela */

/* COM WHERE
SELECT * FROM nome_tabela
WHERE atributo = 10;

*/

/* com LIKE
SELECT nome_dos_campos FROM nome_tabela
 WHERE nome_atributo LIKE ‘string%’
 */
 
 /*ORDENAÇÃO
 SELECT nome_campos FROM nome_tabela
ORDER BY nome_atributo atributo;
*/