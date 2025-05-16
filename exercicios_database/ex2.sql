CREATE TABLE produto(
	id_produto SERIAL PRIMARY KEY NOT NULL,
	nome TEXT NOT NULL,
	preco NUMERIC(10, 2) CHECK (preco > 0) NOT NULL,
	quantidade INT CHECK(quantidade >= 0) NOT NULL,
	categoria CHAR(1) CHECK (categoria IN ('A', 'B', 'C')) NOT NULL
);

INSERT INTO 
	produto(nome, preco, quantidade, categoria) 
VALUES 
	('Batata', 10, 10, 'D');

INSERT INTO 
	produto(nome, preco, quantidade, categoria) 
VALUES 
	('Abacate', 10, -10, 'A');
