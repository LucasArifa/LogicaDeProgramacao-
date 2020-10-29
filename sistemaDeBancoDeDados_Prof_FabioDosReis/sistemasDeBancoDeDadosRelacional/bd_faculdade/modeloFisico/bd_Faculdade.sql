CREATE DATABASE db_faculdade;
USE db_faculdade;
 
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
alter table tbl_historico_escolar drop column nota_final;

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
numero_telefone VARCHAR(11) NOT NULL,
tipo_telefone varchar (15) NOT NULL,
CONSTRAINT fk_RA_telefone FOREIGN KEY (RA) REFERENCES tbl_aluno (RA) ON DELETE CASCADE
);

drop table tbl_tipo_telefone;
drop table tbl_telefone_aluno;

CREATE TABLE tbl_depende (
possui_id_disciplina tinyint PRIMARY KEY NOT NULL,
ID_disciplina tinyint NOT NULL,
CONSTRAINT fk_ID_disciplina2 FOREIGN KEY (ID_disciplina) REFERENCES tbl_disciplina (ID_disciplina) ON DELETE CASCADE
);

insert into tbl_departamento (nome_departamento)
values
('Setor de Ciências Exatas'),
('Setor de Tecnologia'),
('Setor de Ciências Sociais Aplicadas');
select * from tbl_departamento;

insert into tbl_curso (nome_curso, ID_departamento)
values 
('Engenharia Elétrica', 2),
('Construção Civil', 2),
('Engenharia Mecânica', 2),
('Estatística', 1),
('Informática', 1),
('Matemática', 1),
('Física', 1),
('Engenharia da computação', 1),
('Ciência e Gestão da Informação', 3),
('Contabilidade', 3),
('Economia', 3);
select * from tbl_curso;

insert into tbl_disciplina (nome_Disciplina, carga_horaria, ID_departamento)
values
('Matematica aplicada', 60, 1),
('Programação', 60, 1),
('Cálculo', 40, 3),
('Econometria', 40, 3),
('Controle e Automação', 20, 2),
('Desenho Técnico', 20, 2);
select * from tbl_disciplina;

update tbl_disciplina
set carga_horaria = '60:00:00'
WHERE ID_departamento = 1;

insert into tbl_professor (nome_professor, sobrenome_professor, status, ID_departamento)
values 
('Fabio', 'dos reis', 1, 1),
('Silvia', 'Fiacador', 1, 1),
('Weslley', 'Gomes', 0, 2),
('Marlene', 'Souza', 1, 2),
('Marlene', 'Silva', 0, 3),
('Marcio', 'Silva', 1, 3);
select * from tbl_professor;

update tbl_professor
set ID_departamento = 2
where sobrenome_professor = 'Souza';

alter table tbl_turma drop column nome_aluno;
alter table tbl_turma drop column sobrenome_aluno;

insert into tbl_turma (periodo, data_inicio, data_fim, ID_curso)
values
('manhã', 20210205, 20210510, 4),
('manhã', 20210205, 20210510, 5),
('manhã', 20210205, 20210510, 6),
('manhã', 20210205, 20210510, 7),
('manhã', 20210205, 20210510, 8),
('tarde', 20210305, 20210610, 1),
('tarde', 20210305, 20210610, 2),
('tarde', 20210305, 20210610, 3),
('noite', 20210405, 20210710, 9),
('noite', 20210405, 20210710, 10),
('noite', 20210405, 20210710, 11);
select * from tbl_turma;

INSERT INTO tbl_aluno (RA, nome_aluno, sobrenome_aluno, CPF, status, ID_turma, sexo, ID_curso, email)
VALUES
(104, 'Lucas', ' Martins', '14278914536', '1', 1, 'M', 4, 'lucasmartins@gmail.com'),
(105, 'Gabryel', ' Almeida', '14470954536', '1', 1, 'M', 4, 'gabryelalmeida@yahoo.com'),
(106, 'Marcia', ' Meneguel', '1520984537', '1', 7, 'F', 2, 'marciameneguel@hotmail.com'),
(107, 'Breno', ' Lyncoln', '14223651562', '1', 8, 'M', 3, 'brenolyncoln@gmail.com'),
(108, 'Ana', ' Ferretti', '32968914522', '1', 10, 'F', 10, 'anaferretti@hotmail.com'),
(109, 'Paula', ' Soares', '32988914510', '1', 11, 'F', 11, 'paulasoares@outlook.com');
select * from tbl_aluno;

insert into tbl_aluno_disciplina (RA, ID_disciplina)
values
(104, 7),
(105, 8),
(106, 9),
(107, 10),
(108, 11),
(109, 12);
select * from tbl_aluno_disciplina;

insert into tbl_curso_disciplina (ID_curso, ID_disciplina)
values
(1, 11),
(2, 12),
(3, 12),
(4, 7),
(5, 8),
(6, 7),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 10);
select * from tbl_curso_disciplina;

insert into tbl_tipo_logradouro (tipo_logradouro)
VALUES
('Rua'),
('Avenida'),
('Travessa');
select * from tbl_tipo_logradouro;

insert into tbl_telefone_aluno (RA, tipo_telefone, numero_telefone)
values
(104, 'celular', '946231249'),
(105, 'celular', '941741247'),
(106, 'celular', '945781412'),
(107, 'celular', '974267423'),
(108, 'fixo', '55199601'),
(109, 'fixo', '83457898');
select * from tbl_telefone_aluno;

select * from tbl_professor;
select * from tbl_disciplina;

insert into tbl_professor_disciplina (ID_disciplina, ID_professor)
values
(7, 2),
(8, 1),
(9, 6),
(10, 4),
(11, 3),
(12, 5);

select * from tbl_professor_disciplina;

insert into tbl_historico_escolar (RA, data_inicio, data_fim)
VALUES
(104, 20210205, 20210510),
(105, 20210205, 20210510),
(106, 20210305, 20210610),
(107, 20210205, 20210510),
(108, 20210405, 20210710),
(109, 20210405, 20210710);
select * from tbl_historico_escolar;

insert into tbl_disciplina_historico (ID_historico, ID_disciplina, nota, frequencia)
VALUES
(1, 7, 10, 100),
(2, 8, 8, 99),
(3, 11, 9, 97),
(4, 12, 9, 95),
(5, 9, 8, 98),
(6, 10, 10, 98);
select * from tbl_disciplina_historico;

insert into tbl_endereco_aluno (RA, ID_endereco_aluno, nome_rua, numero_casa, complemento, CEP)
VALUES
(104, 1, ' das gaivotas', 121, 'casa 01', '04478195'),
(105, 2, ' mercedes', 45, 'apto 405', '05574569'),
(106, 3, ' Santos', 56, '', '01478562'),
(107, 1, ' antonio de abreu', 111, 'casa 03', '35964871'),
(108, 2, ' Nova Iorque', 98, 'apto 02', '25974158'),
(109, 3, ' Lorena', 23, '', '05851300');
select * from tbl_endereco_aluno;

select nome_aluno, sobrenome_aluno 
from tbl_aluno;

select nome_disciplina
from tbl_disciplina;

select concat (nome_professor, sobrenome_professor) AS Professor
from tbl_professor;

select nome_curso 
from tbl_curso
order by nome_curso asc;

select * from tbl_turma
order by data_inicio desc;

select nome_aluno, CPF
from tbl_aluno
order by nome_aluno asc;

select nome_aluno, RA
from tbl_aluno
order by RA desc;

select nome_curso
from tbl_curso
where ID_curso = 5;

select nome_aluno, sobrenome_aluno, RA 
from tbl_aluno
where RA = 105;

select numero_telefone
from tbl_telefone_aluno
where tipo_telefone = 'celular'
order by numero_telefone desc;

select nome_aluno, ID_turma, email
from tbl_aluno
where ID_turma = 1;

select * from tbl_curso;

select nome_curso AS cursos
from tbl_curso
where ID_curso > 6;

select nome_aluno AS Nome,
sobrenome_aluno AS Sobrenome
from tbl_aluno AS Alunos;

select * from tbl_disciplina;

select nome_disciplina, carga_horaria FROM tbl_disciplina
where ID_disciplina < 11 AND ID_departamento >=2;

select nome_disciplina, carga_horaria, ID_departamento FROM tbl_disciplina
where ID_disciplina > 7 AND NOT ID_departamento =3;

select nome_disciplina, carga_horaria, ID_departamento FROM tbl_disciplina
where ID_disciplina > 8 OR ID_departamento =1;

select * from tbl_turma;

select data_inicio AS Começo, 
data_fim AS final,
periodo AS 'Periodo do curso'
FROM tbl_turma AS turmas
where data_inicio >20210206 AND data_fim > 20210510
order by data_inicio desc;
select count(distinct ID_turma) from tbl_turma;

select count(*) AS 'Total de professores' from tbl_professor;

select * from tbl_aluno
where RA between 105 and 108;

select * from tbl_professor
where nome_professor LIKE 'M%';

select * from tbl_professor
where nome_professor NOT LIKE 'S%';

select * from tbl_aluno
 INNER JOIN tbl_turma
 ON tbl_aluno.ID_turma = tbl_turma.ID_turma;
 
select tbl_professor.nome_professor, tbl_disciplina.nome_disciplina
from tbl_professor JOIN tbl_disciplina
where tbl_professor.ID_departamento = tbl_disciplina.ID_departamento;

select A.nome_aluno AS Aluno, L.tipo_logradouro AS Logradouro, E.nome_rua AS Endereco, T.numero_telefone AS Telefone
from tbl_aluno AS A
JOIN tbl_endereco_aluno AS E
  on A.RA = E.RA
JOIN tbl_tipo_logradouro AS L
 on E.ID_endereco_aluno = L.ID_endereco_aluno
JOIN tbl_telefone_aluno AS T
 on A.RA = T.RA;
 
create procedure verInicio (varCurso varchar(35))
select concat('O curso de ', nome_curso, ' Inicia na data ', data_inicio)
from tbl_curso
   inner join tbl_turma
   on tbl_curso.ID_curso = tbl_turma.ID_turma; 

call verInicio ('');