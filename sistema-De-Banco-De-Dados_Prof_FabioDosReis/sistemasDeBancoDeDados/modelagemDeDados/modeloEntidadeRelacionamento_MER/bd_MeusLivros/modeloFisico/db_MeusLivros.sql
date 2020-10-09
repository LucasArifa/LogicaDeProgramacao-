#Cria o Banco de Dados
CREATE DATABASE db_MeusLivros;

SHOW DATABASES;
#Selecionar Banco de Dados:
USE db_MeusLivros;

# Saber qual Banco de Dadosestá selecionado:
SELECT DATABASE ();

#excluir um banco de dados:
#DROP DATABASE db_MeusLivros;

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
IdLivro SMALLINT NOT NULL AUTO_INCREMENT,
NomeLivro VARCHAR(70) NOT NULL,
ISBN13 VARCHAR(13) NOT NULL,
DataPub DATE,
PrecoLivro DECIMAL(10,2) NOT NULL,
NumeroPaginas SMALLINT NOT NULL,
ID_Editora SMALLINT NOT NULL,
ID_assunto TINYINT NOT NULL,
CONSTRAINT pk_id_livro PRIMARY KEY (IdLivro),
CONSTRAINT fk_id_editora FOREIGN KEY (ID_Editora) REFERENCES tbl_editoras (ID_Editora) ON DELETE CASCADE,
CONSTRAINT fk_id_assunto FOREIGN KEY (ID_assunto) REFERENCES tbl_assuntos (ID_assunto) ON DELETE CASCADE
);

DESCRIBE tbl_livros;

#foi alterado posteriormente
ALTER TABLE tbl_Livros AUTO_INCREMENT=100;
 
CREATE TABLE tbl_livrosAutores (
IdLivro SMALLINT NOT NULL,
ID_Autor SMALLINT NOT NULL,
CONSTRAINT PK_id_livro_autor PRIMARY KEY (IdLivro, ID_Autor),
CONSTRAINT FK_ID_Livro FOREIGN KEY (IdLivro) REFERENCES tbl_livros (IdLivro) ON DELETE CASCADE,
CONSTRAINT FK_ID_Autor FOREIGN KEY (ID_Autor) REFERENCES tbl_autores (ID_Autor) ON DELETE CASCADE
);

DESCRIBE tbl_livrosAutores;

#Inserindo Registros

INSERT INTO tbl_Editoras (nome_Editora) 
VALUES ('Senac'),('NovaTec'),('Proa');
SELECT*FROM tbl_Editoras;


INSERT INTO tbl_Assuntos (assunto)
VALUES ('Tecnologia da Informação'),('Sistema de Banco de Dados'),('Sistemas e Aplicações Web');
SELECT*FROM tbl_Assuntos;

INSERT INTO tbl_Autores (nome_Autor, sobrenome_Autor) 
VALUES ('Gley','Fabiano'), ('Ana','Laura'),('André','M.'),('Instituto','Proa'),('Craig','Larman'),('Esmasri','Navathe');
SELECT*FROM tbl_Autores;

insert into tbl_Livros (nome_Livro, ISBN13 , dataPublicacao, preco_Livro, numero_Paginas, id_Assunto, id_Editora)
values ('Logica de Programação', '9781118983843', '20150109', 165.55, 816, 7, 4),
('Projeto de Vida', '9780596008956', '20050517', 295.41, 672, 7, 2),
('HTML5 e CSS3', '9780596002565', '20031221', 158.76, 449, 7, 2),
('Construindo aplicações Web com PHP e MySQL','9788582604342', 20170308, 176.71, 1160, 7, 6),
('Sistemas de Banco de Dados', '9781943872367', '20190501', 227.64, 650, 7, 10),
('Ultilizando UML e Padrões', '9781259587542', '20160711', 119.58, 1056, 3, 5);
select*from tbl_Livros;

insert into tbl_livrosautores (IdLivro, ID_Autor)
values
(121,5), (121,6),
(122,1), (122,7), (122,8),
(123,2), (123,9), (123,10),
(124,11), (124,12),
(125,4),
(126,13),
(127,14), (127,15);
