#CRIANDO O BANCO DE DADOS DA FACULDADE
CREATE DATABASE bd_Faculdade;
SHOW DATABASES;
USE bd_Faculdade;
SELECT DATABASE();

#DELETA O bd_Faculdade;
#DROP DATABASE bd_Faculdade;

#CRIANDO ENTIDADES (TABLES)

 CREATE TABLE tbl_Departamento(
 ID_Departamento INT PRIMARY KEY AUTO_INCREMENT,
 Nome_departamento VARCHAR(30) NOT NULL
 );
DESCRIBE tbl_Departamento;

CREATE TABLE tbl_Professor(
ID_Professor INT PRIMARY KEY AUTO_INCREMENT,
Nome_Professor VARCHAR(15) NOT NULL,
Sobrenome_Professor VARCHAR(50) NOT NULL,
ID_Departamento INT,
CONSTRAINT fk_id_departamento FOREIGN KEY(ID_Departamento) REFERENCES tbl_Departamento(ID_Departamento)	 
);
DESCRIBE tbl_Professor;

CREATE TABLE tbl_Curso(
ID_Curso INT PRIMARY KEY AUTO_INCREMENT,
Nome_Curso VARCHAR(30),
ID_Departamento INT,
CONSTRAINT fk_id_depart FOREIGN KEY(ID_Departamento) REFERENCES tbl_Departamento(ID_Departamento)
);
DESCRIBE tbl_Professor;

CREATE TABLE tbl_Turma(
ID_Turma INT PRIMARY KEY AUTO_INCREMENT,
ID_Curso INT,
Periodo VARCHAR(10),
Num_Aluno INT,
Data_Inicio DATE,
Data_Fim DATE,
CONSTRAINT fk_id_curso FOREIGN KEY(ID_Curso) REFERENCES tbl_Curso (ID_Curso)
);
DESCRIBE tbl_Turma;

CREATE TABLE tbl_Disciplina(
ID_Disciplina INT PRIMARY KEY AUTO_INCREMENT,
Disciplina_Depende INT NULL,
Nome_Disciplina VARCHAR(30),
ID_Departamento INT,
Carga_Horaria INT NOT NULL,
Num_Aluno INT NOT NULL,
CONSTRAINT fk_departamento_ID FOREIGN KEY(ID_Departamento) REFERENCES tbl_Departamento(ID_Departamento),	
CONSTRAINT fk_ID_Disciplina FOREIGN KEY(Disciplina_Depende) REFERENCES tbl_Disciplina(ID_Disciplina)
);
DESCRIBE tbl_Disciplina;

CREATE TABLE tbl_Prof_Disc(
ID_Professor INT NOT NULL,
ID_Disciplina INT NOT NULL,
PRIMARY KEY(ID_Professor, ID_Disciplina),
CONSTRAINT fk_ID_Professor_Prof FOREIGN KEY (ID_Professor) REFERENCES tbl_Professor (ID_Professor),
CONSTRAINT fk_ID_Disciplina_Prof FOREIGN KEY (ID_Disciplina) REFERENCES tbl_Disciplina (ID_Disciplina)
);
DESCRIBE tbl_Prof_Disc;

CREATE TABLE tbl_curso_disc(
ID_Curso INT NOT NULL,
ID_Disciplina INT NOT NULL,
PRIMARY KEY(ID_Curso,ID_Disciplina),
CONSTRAINT fk_ID_Curso_Disci FOREIGN KEY (ID_Curso) REFERENCES tbl_Curso (ID_Curso),
CONSTRAINT fk_ID_Disciplina_Disci FOREIGN KEY (ID_Disciplina) REFERENCES tbl_Disciplina (ID_Disciplina)
);
DESCRIBE tbl_curso_disc;

CREATE TABLE tbl_Aluno(
RA INT PRIMARY KEY AUTO_INCREMENT,
Nome_Aluno VARCHAR(20) NOT NULL,
Sobrenome_Aluno VARCHAR(50) NOT NULL,
CPF VARCHAR(12) NOT NULL,
ID_Turma INT,
ID_Curso INT,
Email VARCHAR(50),
Telefone VARCHAR(20),
CONSTRAINT fk_ID_Turma_Aluno FOREIGN KEY(ID_Turma) REFERENCES tbl_Turma (ID_Turma),
CONSTRAINT fk_ID_Curso_Aluno FOREIGN KEY(ID_Curso) REFERENCES tbl_Curso (ID_Curso)
);
DESCRIBE tbl_Aluno;

CREATE TABLE tbl_Aluno_Disc(
RA INT NOT NULL,
ID_Disciplina INT NOT NULL,
PRIMARY KEY(RA, ID_Disciplina),
 CONSTRAINT fk_RA FOREIGN KEY (RA) REFERENCES tbl_Aluno (RA),
 CONSTRAINT fk_ID_Disciplina_Aluno FOREIGN KEY (ID_Disciplina) REFERENCES tbl_Disciplina (ID_Disciplina)
);
DESCRIBE tbl_Aluno_Disc;

CREATE TABLE tbl_Historico(
ID_Historico INT PRIMARY KEY AUTO_INCREMENT,
RA INT NOT NULL,
Data_Inicio DATE NOT NULL,
Data_Fim DATE,
CONSTRAINT fk_RA_Aluno FOREIGN KEY (RA) REFERENCES tbl_Aluno(RA)
);
DESCRIBE tbl_Historico;

CREATE TABLE tbl_Disc_Hist(
ID_Historico INT NOT NULL,
ID_Disciplina INT NOT NULL,
Nota INT,
Hz INT,
PRIMARY KEY (ID_Historico, ID_Disciplina),
CONSTRAINT fk_ID_Historico FOREIGN KEY (ID_Historico) REFERENCES tbl_Historico (ID_Historico),
CONSTRAINT fk_ID_Disciplina_Hist FOREIGN KEY (ID_Disciplina) REFERENCES tbl_Disciplina (ID_Disciplina)
);
DESCRIBE tbl_Disc_Hist;

CREATE TABLE tbl_Telefone(
ID_Telefone INT PRIMARY KEY AUTO_INCREMENT,
Tipo_Telefone VARCHAR(10)
);
DESCRIBE tbl_Telefone;

CREATE TABLE tbl_Telefones_Aluno (
ID_Telefones_Aluno INT PRIMARY KEY AUTO_INCREMENT,
RA INT NOT NULL,
ID_Telefone INT NOT NULL,
Num_Telefone VARCHAR(20) NOT NULL,
CONSTRAINT fk_ID_RA_Tel FOREIGN KEY (RA) REFERENCES tbl_Aluno (RA),
CONSTRAINT fk_ID_Telefone FOREIGN KEY (ID_Telefone) REFERENCES tbl_Telefone (ID_Telefone)
);
DESCRIBE tbl_Telefones_Aluno;

CREATE TABLE tbl_Endereco_Aluno (
ID_Endereco_Aluno INT PRIMARY KEY AUTO_INCREMENT,
RA INT NOT NULL,
Nome_Rua VARCHAR(50) NOT NULL,
Num_Rua INT NOT NULL,
Complemento VARCHAR(20) NULL,
CEP VARCHAR(8) NOT NULL,
CONSTRAINT fk_RA_End FOREIGN KEY(RA) REFERENCES tbl_Aluno (RA)
);
DESCRIBE tbl_Endereco_Aluno;
