CREATE TABLE sala(
	id SERIAL PRIMARY KEY NOT NULL,
	nome TEXT NOT NULL
);

CREATE TABLE reserva(
	id SERIAL PRIMARY KEY NOT NULL,
	id_sala INTEGER NOT NULL,
	data_reserva DATE NOT NULL,
	hora_inicio TIME NOT NULL,
	hora_fim TIME NOT NULL,
	CHECK (data_reserva >= NOW()),
	CHECK (hora_fim > hora_inicio),
	FOREIGN KEY (id_sala) REFERENCES sala(id) 
		ON DELETE RESTRICT
);

INSERT INTO sala (nome) VALUES
('Sala A'),
('Sala B'),

INSERT INTO reserva
	(id_sala, data_reserva, hora_inicio, hora_fim)
VALUES
	(1, '2025-05-20', '11:00:00', '12:00:00'),
	(2, '2025-05-21', '14:00:00', '15:30:00');

-- TENTANDO ADICIONAR UM RESEVA COM DATA INCORRETA
INSERT INTO reserva
	(id_sala, data_reserva, hora_inicio, hora_fim)
VALUES
	(1, '2025-05-20', '09:00:00', '08:00:00');

-- TENTANDO APAGAR UMA SALA HAVENDO RESERVAS
DELETE FROM sala
WHERE id = 1; 