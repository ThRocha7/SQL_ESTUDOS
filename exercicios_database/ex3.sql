CREATE TABLE departamento(
	id SERIAL PRIMARY KEY NOT NULL,
	nome TEXT NOT NULL
);

CREATE TABLE funcionarios(
	id SERIAL PRIMARY KEY NOT NULL,
	nome TEXT NOT NULL,
	id_departamento INTEGER NOT NULL,
	FOREIGN KEY (id_departamento) REFERENCES departamento(id) 
		ON DELETE RESTRICT
);


INSERT INTO departamento 
	(nome)
VALUES 
	('Recursos Humanos');

INSERT INTO funcionarios 
	(nome, id_departamento) 
VALUES
	('Ana Paula', 1),
	('Bruno Lima', 1),
	('Carlos Silva', 1),
	('Daniela Torres', 1),
	('Eduardo Almeida', 1);

DELETE FROM departamento
WHERE id = 1;

-- ERROR:  Chave (id)=(1) ainda é referenciada pela tabela "funcionarios".
-- Atualização ou exclusão em tabela "departamento" viola restrição de chave estrangeira "funcionarios_id_departamento_fkey" em "funcionarios" 