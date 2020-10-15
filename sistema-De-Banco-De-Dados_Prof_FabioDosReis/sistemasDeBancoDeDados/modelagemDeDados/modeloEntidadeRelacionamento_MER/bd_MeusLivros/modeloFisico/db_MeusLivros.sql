CREATE DATABASE db_MeusLivros;
SHOW DATABASES;
USE db_MeusLivros;
SELECT DATABASE ();
SHOW TABLES;
#DROP DATABASE db_MeusLivros;

#Criando Tabelas 
CREATE table tbl_Autores (
id_Autor SMALLINT AUTO_INCREMENT,
nome_Autor VARCHAR (35) NOT NULL,
sobrenome_Autor VARCHAR(60) NOT NULL,
CONSTRAINT pk_Id_Autor PRIMARY KEY (id_Autor)
);
DESCRIBE tbl_Autores;

CREATE TABLE tbl_Editoras (
id_Editora SMALLINT PRIMARY KEY AUTO_INCREMENT,
nome_Editora VARCHAR(50) NOT NULL
);
DESCRIBE tbl_Editoras;

CREATE TABLE tbl_Assuntos (
id_Assunto TINYINT AUTO_INCREMENT,
assunto VARCHAR(25) NOT NULL,
CONSTRAINT pk_Id_Assunto PRIMARY KEY (id_Assunto)
);
DESCRIBE tbl_Assuntos;

CREATE TABLE tbl_Livros (
id_Livro SMALLINT NOT NULL AUTO_INCREMENT,
nome_Livro VARCHAR(70) NOT NULL,
ISBN13 VARCHAR(13) NOT NULL,
data_Pub DATE,
preco_Livro DECIMAL(10,2) NOT NULL,
numero_Paginas SMALLINT NOT NULL,
id_Editora SMALLINT NOT NULL,
id_Assunto TINYINT NOT NULL,
CONSTRAINT pk_Id_livro PRIMARY KEY (id_Livro),
CONSTRAINT fk_Id_Editora FOREIGN KEY (id_Editora) REFERENCES tbl_Editoras (id_Editora) ON DELETE CASCADE,
CONSTRAINT fk_Id_Assunto FOREIGN KEY (id_Assunto) REFERENCES tbl_Assuntos (id_Assunto) ON DELETE CASCADE
);
DESCRIBE tbl_Livros;

CREATE TABLE tbl_livrosAutores (
id_Livro SMALLINT NOT NULL,
id_Autor SMALLINT NOT NULL,
CONSTRAINT pk_Id_Livro_Autor PRIMARY KEY (id_Livro, id_Autor),
CONSTRAINT fk_Id_Livro FOREIGN KEY (id_Livro) REFERENCES tbl_livros (id_Livro) ON DELETE CASCADE,
CONSTRAINT fk_Id_Autor FOREIGN KEY (id_Autor) REFERENCES tbl_autores (id_Autor) ON DELETE CASCADE
);
DESCRIBE tbl_livrosAutores;

#Inserindo Registros

INSERT INTO tbl_Editoras (nome_Editora) 
VALUES ('Senac'),('Senac'),('NovaTec'),('PEARSON - Addison Wesley'),('Artmed Editora'),('Proa');
SELECT*FROM tbl_Editoras;

INSERT INTO tbl_Assuntos (assunto)
VALUES ('Lógica de Programação'),('HTML5 e CSS3'),('Construindo Aplicações Web com PHP e MySQL'),('Sistema de Banco de Dados'),('Ultilizando UML e Padrões'),('Projeto de Vida');
SELECT*FROM tbl_Assuntos;

INSERT INTO tbl_Autores (nome_Autor, sobrenome_Autor) 
VALUES ('Gley','Fabiano'),('Ana','Laura'),('André','M.'),('Esmasri','Navathe'),('Craig','Larman'), ('Instituto', 'Proa');
SELECT*FROM tbl_Autores;

INSERT INTO  tbl_livros (nome_Livro, ISBN13 , data_Pub, preco_Livro, numero_Paginas, id_Editora, id_Assunto)
VALUES ('Lógica de Programação', '9781118983843', '2014', 0, 308, 0, 0);
SELECT*FROM tbl_Livros;
describe tbl_livros;

INSERT INTO  tbl_livros (nome_Livro, ISBN13 , data_Pub, preco_Livro, numero_Paginas, id_Editora, id_Assunto)
VALUES ('HTML5 e CSS3', '9780596002565', '2016', 0, 272, 0, 1);
SELECT*FROM tbl_Livros;

INSERT INTO  tbl_livros (nome_Livro, ISBN13 , data_Pub, preco_Livro, numero_Paginas, id_Editora, id_Assunto)
VALUES ('Construindo aplicações Web com PHP e MySQL','9788582604342', '2016', 0, 336, 1, 2);
SELECT*FROM tbl_Livros;

INSERT INTO  tbl_livros (nome_Livro, ISBN13 , data_Pub, preco_Livro, numero_Paginas, id_Editora, id_Assunto)
VALUES ('Sistemas de Banco de Dados', '9781943872367', '2005', 227.64, 744, 2, 3);
SELECT*FROM tbl_Livros;

INSERT INTO  tbl_livros (nome_Livro, ISBN13 , data_Pub, preco_Livro, numero_Paginas, id_Editora, id_Assunto)
VALUES ('Ultilizando UML e Padrões', '9781259587542', '2007', 176.99, 696, 3, 4);
SELECT*FROM tbl_Livros;

INSERT INTO  tbl_livros (nome_Livro, ISBN13 , data_Pub, preco_Livro, numero_Paginas, id_Editora, id_Assunto)
VALUES ('Projeto de Vida', '9781259589846', '2020', 0, 1026, 4, 5);
SELECT*FROM tbl_Livros;

INSERT INTO tbl_livrosAutores (id_Livro, id_Autor)
VALUES 
('0','0'),
('0','1'),
('1','2'),
('2','3'),
('4','5'),
('5','6');
SELECT*FROM tbl_LivrosAutores;