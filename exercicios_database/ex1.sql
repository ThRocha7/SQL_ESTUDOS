CREATE TABLE funcionario(
	id SERIAL PRIMARY KEY NOT NULL,
	nome VARCHAR(100) NOT NULL,
	salario NUMERIC(10, 2) NOT NULL,
	data_admissao DATE,
	ativo BOOLEAN
);

INSERT INTO 
	funcionario(nome, salario, data_admissao, ativo) 
VALUES 
	('Ana Souza',        3500.00, '2010-03-15', TRUE),
	('Carlos Mendes',    4200.50, '2012-07-10', TRUE),
	('Fernanda Lima',    3900.75, '2014-11-20', FALSE),
	('João Pereira',     3100.00, '2016-01-05', TRUE),
	('Luciana Rocha',    4700.90, '2017-09-12', TRUE),
	('Marcelo Tavares',  2800.30, '2018-06-25', FALSE),
	('Patrícia Gomes',   5300.00, '2020-04-17', TRUE),
	('Renato Silva',     3600.40, '2021-12-01', TRUE),
	('Sônia Albuquerque',4000.00, '2023-02-08', TRUE),
	('Thiago Nunes',     2950.60, '2024-01-22', FALSE);

SELECT * FROM funcionario
WHERE data_admissao > '2021-01-01';