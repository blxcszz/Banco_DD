CREATE DATABASE DB_join
USE DB_join

-- Entidade Forte
CREATE TABLE tbl_curso(
idCurso INT IDENTITY(1,1),
nomeCurso VARCHAR(100)
PRIMARY KEY(idCurso)
);

-- Entidade Fraca
CREATE TABLE tbl_aluno(
id INT IDENTITY(1,1),
nome VARCHAR(100),
curso INT
PRIMARY KEY (id),
FOREIGN KEY(curso) REFERENCES tbl_curso(idCurso)
);


INSERT INTO tbl_aluno(nome, curso)
VALUES
('João',2),
('Maria',2),
('Pedro',1),
('Ana',4),
('Tiago', NULL),
('Alex', NULL),
('Gisele', NULL),
('Marcelo', NULL)

SELECT * from tbl_aluno


INSERT INTO tbl_curso (nomeCurso)
VALUES
('Java'),
('C++'),
('C#'),
('PHP')

SELECT * from tbl_curso

SELECT a.nome, c.nomeCurso FROM tbl_aluno a -- left
INNER JOIN tbl_curso c -- right
ON a.curso = c.idCurso






CREATE TABLE tbl_departamento(
nomeDepart varchar(100) not null,
numeroDepart int Identity(1,1),
rgGerente int not null
PRIMARY KEY(numeroDepart)
)


INSERT into tbl_departamento(nomeDepart, rgGerente) VALUES
('Contabilidade', 10101010),
('Engenharia Civil', 30303030),
('Engenharia Mecânica', 20202020)


CREATE TABLE tbl_empregado(
nomeEmpre varchar(100),
rgEmpre int,
cic int,
departamento int Identity(1,1),
rgSupervisor int,
salario int
PRIMARY KEY(rgEmpre),
FOREIGN KEY(departamento) REFERENCES tbl_departamento(numeroDepart)
)

INSERT into tbl_empregado(nomeEmpre, rgEmpre, cic, rgSupervisor, salario) VALUES
('João Luiz', 10101010, 11111111, null, 3000),
('Fernando', 20202020, 22222222, 10101010, 2500),
('Ricardo', 30303030, 33333333, 10101010, 2300),
('Jorge', 40404040, 44444444, 20202020, 4200),
('Renato', 40404040, 55555555, 20202020, 3000)