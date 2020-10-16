#CREATE DATABASE db_faculdade;
#DROP DATABASE db_faculdade;
SHOW DATABASES;
SHOW TABLES;
USE db_Faculdade;
SELECT DATABASE();

#Criando Tabelas
 CREATE TABLE tbl_departamento(
 ID_departamento tinyint PRIMARY KEY AUTO_INCREMENT,
 nome_departamento VARCHAR(35) NOT NULL
 );

CREATE TABLE tbl_professor(
ID_professor tinyint PRIMARY KEY AUTO_INCREMENT,
nome_professor VARCHAR(30) NOT NULL,
sobrenome_professor VARCHAR(30) NOT NULL,
ID_departamento tinyint NOT NULL,
status VARCHAR(20) NOT NULL,
CONSTRAINT fk_id_departamento FOREIGN KEY(ID_departamento) REFERENCES tbl_departamento(ID_departamento) ON DELETE CASCADE	 
);

CREATE TABLE tbl_curso(
ID_curso tinyint PRIMARY KEY AUTO_INCREMENT,
nome_curso VARCHAR(35) NOT NULL,
ID_departamento tinyint NOT NULL,
CONSTRAINT fk_id_departamento2 FOREIGN KEY(ID_departamento) REFERENCES tbl_departamento(ID_departamento) ON DELETE CASCADE
);

CREATE TABLE tbl_turma(
ID_turma tinyint PRIMARY KEY AUTO_INCREMENT,
ID_curso tinyint NOT NULL,
periodo varchar (30) NOT NULL,
nome_aluno varchar(30) NOT NULL,
sobrenome_aluno varchar(30) NOT NULL,
data_inicio DATE,
data_fim DATE,
CONSTRAINT fk_id_curso FOREIGN KEY(ID_curso) REFERENCES tbl_Curso (ID_curso) ON DELETE CASCADE
);

CREATE TABLE tbl_disciplina(
ID_disciplina tinyint PRIMARY KEY AUTO_INCREMENT,
nome_Disciplina VARCHAR(30),
ID_departamento tinyint NOT NULL,
carga_horaria time NOT NULL,
CONSTRAINT fk_ID_departamento3 FOREIGN KEY(ID_departamento) REFERENCES tbl_Departamento(ID_departamento) ON DELETE CASCADE
);

CREATE TABLE tbl_professor_disciplina(
ID_professor tinyint NOT NULL,
ID_disciplina tinyint NOT NULL,
PRIMARY KEY(ID_professor, ID_disciplina),
CONSTRAINT fk_ID_professor FOREIGN KEY (ID_professor) REFERENCES tbl_professor (ID_professor) ON DELETE CASCADE,
CONSTRAINT fk_ID_disciplina_prof FOREIGN KEY (ID_disciplina) REFERENCES tbl_disciplina (ID_disciplina) ON DELETE CASCADE
);

CREATE TABLE tbl_curso_disciplina(
ID_curso tinyint NOT NULL,
ID_disciplina tinyint NOT NULL,
PRIMARY KEY(ID_curso, ID_disciplina),
CONSTRAINT fk_ID_curso_disciplina FOREIGN KEY (ID_curso) REFERENCES tbl_curso (ID_curso) ON DELETE CASCADE,
CONSTRAINT fk_ID_disciplina FOREIGN KEY (ID_disciplina) REFERENCES tbl_disciplina (ID_disciplina) ON DELETE CASCADE
);

CREATE TABLE tbl_aluno( 
RA smallint PRIMARY KEY NOT NULL,
nome_aluno VARCHAR(30) NOT NULL,
sobrenome_aluno VARCHAR(30) NOT NULL,
CPF VARCHAR(12) UNIQUE NOT NULL,
ID_turma tinyint NOT NULL,
ID_curso tinyint NOT NULL,
email VARCHAR(50) NOT NULL,
status varchar (20) NOT NULL,
sexo varchar (9) NOT NULL,
CONSTRAINT fk_ID_turma_aluno FOREIGN KEY(ID_turma) REFERENCES tbl_turma (ID_turma) ON DELETE CASCADE,
CONSTRAINT fk_ID_curso_aluno FOREIGN KEY(ID_curso) REFERENCES tbl_curso (ID_curso) ON DELETE CASCADE
);

CREATE TABLE tbl_tipo_logradouro (
ID_endereco_aluno tinyint PRIMARY KEY AUTO_INCREMENT,
tipo_logradouro VARCHAR (20) NOT NULL
);

CREATE TABLE tbl_endereco_aluno (
ID_endereco tinyint PRIMARY KEY AUTO_INCREMENT,
ID_endereco_aluno tinyint NOT NULL,
RA smallint NOT NULL,
nome_rua VARCHAR(25) NOT NULL,
numero_casa tinyint NOT NULL,
complemento VARCHAR(20) NULL,
CEP VARCHAR(8) NOT NULL,
CONSTRAINT fk_RA_endereco FOREIGN KEY(RA) REFERENCES tbl_aluno (RA) ON DELETE CASCADE,
CONSTRAINT fk_ID_endereco_aluno FOREIGN KEY (ID_endereco_aluno) REFERENCES tbl_tipo_logradouro (ID_endereco_aluno) ON DELETE CASCADE
);

CREATE TABLE tbl_aluno_disciplina(
RA smallint NOT NULL,
ID_disciplina tinyint NOT NULL,
PRIMARY KEY(RA, ID_Disciplina),
 CONSTRAINT fk_RA FOREIGN KEY (RA) REFERENCES tbl_Aluno (RA) ON DELETE CASCADE,
 CONSTRAINT fk_ID_disciplina_aluno FOREIGN KEY (ID_disciplina) REFERENCES tbl_disciplina (ID_disciplina) ON DELETE CASCADE
);

CREATE TABLE tbl_historico_escolar(
ID_historico tinyint PRIMARY KEY AUTO_INCREMENT,
RA smallint NOT NULL,
data_inicio DATE NOT NULL,
data_fim DATE,
nota_final tinyint NOT NULL,
CONSTRAINT fk_RA_aluno FOREIGN KEY (RA) REFERENCES tbl_aluno(RA) ON DELETE CASCADE
);

CREATE TABLE tbl_disciplina_historico(
ID_historico tinyint NOT NULL,
ID_disciplina tinyint NOT NULL,
nota float (4,2) NOT NULL,
frequencia tinyint NOT NULL,
PRIMARY KEY (ID_Historico, ID_Disciplina),
CONSTRAINT fk_ID_historico FOREIGN KEY (ID_historico) REFERENCES tbl_historico_escolar (ID_historico) ON DELETE CASCADE,
CONSTRAINT fk_ID_disciplina_historico FOREIGN KEY (ID_disciplina) REFERENCES tbl_disciplina (ID_disciplina) ON DELETE CASCADE
);

CREATE TABLE tbl_tipo_telefone(
tipo_telefone VARCHAR(15) PRIMARY KEY,
ID_telefone_aluno tinyint NOT NULL
);

CREATE TABLE tbl_telefone_aluno (
ID_telefone_aluno tinyint PRIMARY KEY AUTO_INCREMENT,
RA smallint NOT NULL,
tipo_telefone VARCHAR(15) NOT NULL,
numero_telefone VARCHAR(11) NOT NULL,
CONSTRAINT fk_RA_telefone FOREIGN KEY (RA) REFERENCES tbl_aluno (RA) ON DELETE CASCADE,
CONSTRAINT fk_ID_telefone FOREIGN KEY (tipo_telefone) REFERENCES tbl_tipo_telefone (tipo_telefone) ON DELETE CASCADE
);

CREATE TABLE tbl_depende (
possui_id_disciplina tinyint PRIMARY KEY NOT NULL,
ID_disciplina tinyint NOT NULL,
CONSTRAINT fk_ID_disciplina2 FOREIGN KEY (ID_disciplina) REFERENCES tbl_disciplina (ID_disciplina) ON DELETE CASCADE
);

#INSERÇÃO DE DADOS

CREATE TABLE tbl_aluno( 
RA smallint PRIMARY KEY NOT NULL,
nome_aluno VARCHAR(30) NOT NULL,
sobrenome_aluno VARCHAR(30) NOT NULL,
CPF VARCHAR(12) UNIQUE NOT NULL,
ID_turma tinyint NOT NULL,
ID_curso tinyint NOT NULL,
email VARCHAR(50) NOT NULL,
status varchar (20) NOT NULL,
sexo varchar (9) NOT NULL,
CONSTRAINT fk_ID_turma_aluno FOREIGN KEY(ID_turma) REFERENCES tbl_turma (ID_turma) ON DELETE CASCADE,
CONSTRAINT fk_ID_curso_aluno FOREIGN KEY(ID_curso) REFERENCES tbl_curso (ID_curso) ON DELETE CASCADE
);

INSERT INTO tbl_aluno (RA,nome_aluno,_sobrenome_aluno,CPF,ID_turma,ID_curso,email,sexo)
VALUES (1,"Lucas","Arifa", "32564894515",1,1,"lucasArifa@gmail.com");
