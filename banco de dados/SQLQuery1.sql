CREATE TABLE tbl_aluno
(

RA int NOT NULL,

NOME VARCHAR(100) NOT NULL,

RUA VARCHAR(100) NOT NULL,

Numero INT CHECK(Numero>0) NOT NULL,

Bairro VARCHAR(100) NOT NULL,

CEP VARCHAR(08) NOT NULL,

Telefone VARCHAR(08) NOT NULL

PRIMARY KEY(RA)

)

SELECT*from tbl_aluno

INSERT INTO tbl_aluno VALUES

(12345, 'José Silva Almirante', 'Noronha',236,'Jardim São Paulo', '01589000', '69875287'),

(12346, 'Ana Maria', 'BastosAnhaia',1568,'Barra Funda','03569000','25698526'),

(12347, 'Mario Santos', 'XV de Novembro',1841,'Centro','01020030','25698509'),

(12348,'Marcia Neves' ,'Voluntários da Patria',225,'Santana','02785090','78964152')


SELECT RA, NOME,RUA, NUMERO from tbl_aluno

CREATE TABLE tbl_cliente(

cpf int not null,
nome varchar (100) not null,
endereço varchar (100) not null,
telefone varchar (100) not null,
sexo varchar (50) not null,
primary key (cpf)
)

DROP TABLE tbl_cliente

SELECT*from tbl_cliente


INSERT INTO tbl_cliente VALUES

(354535628-52, 'José Maria', 'Campos Sales', 1234567890, 'masculono'),
(423426342-45, 'Maria José', 'carvalho', 234521151, 'neutri'),
(234523461-42, 'Jasinto Pinto', 'Cume do judas', 51345213462, 'feminino'),
(626452342-62, 'Jasinto Ronaldo', 'Isadora', 123412341, 'masculino?'),
(103448917-42, 'Péricles', 'O queiroz', 125341236611, 'gordo')


CREATE TABLE tbl_produto ( 
codigo int not null,
nome varchar (100) not null,
preco varchar (100) not null,
precoAquisicao varchar (100) not null,
primary key (codigo)
)

SELECT*from tbl_produto
DROP TABLE tbl_produto

INSERT INTO tbl_produto VALUES
(0102,'quatro queijos', '10.40','11.20'),
(0103,'cinto quejos', '20.50','13.25'),
(0104,'seis queijos', '25.55','15.30'),
(0105,'sete queijos', '30.40','17.40'),
(0106,'oito queijos', '35.42','19.60')