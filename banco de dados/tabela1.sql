CREATE DATABASE comando_base

USE comando_base

CREATE TABLE tbl_produto(
	produto		VARCHAR (100) not null,
	fornecedor	VARCHAR (100) not null,
	custo_uni	VARCHAR (100) not null,
	quantidade	INT not null,
	custo_total VARCHAR (100) not null
	primary key (produto)
)

SELECT * from tbl_produto

INSERT INTO tbl_produto (produto, fornecedor, custo_uni, quantidade, custo_total) VALUES
	('Produto 1', 'Fornecedor 1', 'R$ 200,00', 30, 'R$ 6.000,00'),
	('Produto 2', 'Fornecedor 1', 'R$ 100,00', 50, 'R$ 5.000,00'),
	('Produto 3', 'Fornecedor 1', 'R$ 50,00', 50, 'R$ 2.500,00'),
	('Produto 4', 'Fornecedor 1', 'R$ 10,00', 100, 'R$ 1.000,00'),
	('Produto 5', 'Fornecedor 1', 'R$ 150,00', 20, 'R$ 3.000,00'),
	('Produto 6', 'Fornecedor 1', 'R$ 250,00', 2, 'R$ 500,00'),
	('Produto 7', 'Fornecedor 1', 'R$ 300,00', 5, 'R$ 1.500,00')

DROP TABLE tbl_produto

ALTER TABLE tbl_produto 
ADD validade VARCHAR(30)

UPDATE tbl_produto
SET custo_uni = 'R$ 200,00' 
WHERE produto = 'Produto 5'

DELETE tbl_produto
WHERE produto = 'Produto 7'

ALTER TABLE tbl_produto
DROP COLUMN validade

--exercicio

ALTER TABLE tbl_produto
DROP COLUMN custo_total

SELECT * from tbl_produto

ALTER TABLE tbl_produto
ADD nome_produto VARCHAR (100)

SELECT * from tbl_produto

ALTER TABLE tbl_produto
ADD percentual_lucro VARCHAR (100)

SELECT * from tbl_produto

UPDATE tbl_produto
SET nome_produto = 'Melancia', percentual_lucro = '10%'
WHERE produto = 'Produto 1'

UPDATE tbl_produto
SET nome_produto = 'Laranja', percentual_lucro = '60%'
WHERE produto = 'Produto 2'

UPDATE tbl_produto
SET nome_produto = 'Limão', percentual_lucro = '20%' 
WHERE produto = 'Produto 3'

UPDATE tbl_produto
SET nome_produto = 'Banana', percentual_lucro = '15%' 
WHERE produto = 'Produto 4'

UPDATE tbl_produto
SET nome_produto = 'Morango', percentual_lucro = '17%' 
WHERE produto = 'Produto 5'

UPDATE tbl_produto
SET nome_produto = 'Maçã', percentual_lucro = '26%' 
WHERE produto = 'Produto 6'

UPDATE tbl_produto
SET nome_produto = 'Tamara', percentual_lucro = '9%' 
WHERE produto = 'Produto 7'



