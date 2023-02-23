<?php 

#conexão com o banco de dados

$servidor = "localhost";
$usuario = "root";
$senha = "josemaria19";
$database = "aula_php";

$conexao = mysqli_connect($servidor, $usuario, $senha, $database);

if ($conexao){
	echo "Conectado com sucesso<br>";
}

#Criando tabelas usando PHP

#Tabela cursos (nome do curso, carga horaria)
$query = "CREATE TABLE CURSOS(
		  id_cursoINT NOT NULL AUTO_INCREMENT,
		  nome_curso VARCHAR(255) NOT NULL,
		  carga_horaria INT NOT NULL,
		  PRIMARY KEY (id_curso)
		)";
$executar =  mysqli_query($conexao, $query);
if($executar){
	echo "Executado com sucesso(cursos)<br>";
}else{
	echo "Falha ao executar(cursos)<br>";
}

#Tabela alunos(nome d aluno, data_nascimento)
$query = "CREATE TABLE ALUNOS(
		  id_aluno INT NOT NULL AUTO_INCREMENT,
		  nome_aluno VARCHAR(255) NOT NULL,
		  data_nascimento DATE,
		  PRIMARY KEY (id_aluno)
		)";
$executar =  mysqli_query($conexao, $query);
if($executar){
	echo "Executado com sucesso (alunos)<br>";
}else{
	echo "Falha ao executar (alunos)<br>";
}

#Tabela alunos_cursos(aluno, curso)
$query = "CREATE TABLE ALUNOS_CURSOS(
		  id_aluno_curso INT NOT NULL AUTO_INCREMENT,
		  id_aluno INT NOT NULL,
		  id_curso INT NOT NULL,
		  PRIMARY KEY (id_aluno_curso)
		)";
$executar =  mysqli_query($conexao, $query);
if($executar){
	echo "Executado com sucesso (alunos_cursos)<br>";
}else{
	echo "Falha ao executar (alunos_cursos)<br>";
}

#Inserir dados nas tabelas
$query = "INSERT INTO ALUNOS(nome_aluno, data_nascimento) VALUES('Jose', '1990-09-01')";

$executar =  mysqli_query($conexao, $query);

$query = "INSERT INTO ALUNOS(nome_aluno, data_nascimento) VALUES('Maria', '1990-09-05')";

$executar =  mysqli_query($conexao, $query);


#Inserir cursos

$query = "INSERT INTO CURSOS(nome_curso, carga_horaria) VALUES('PHP E MYSQL', 10)";

$executar =  mysqli_query($conexao, $query);

#Alunos curso
$query = "INSERT INTO ALUNOS_CURSOS(id_aluno, id_curso) VALUES(5,1)";

$executar =  mysqli_query($conexao, $query);