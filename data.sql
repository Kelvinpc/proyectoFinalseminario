USE centrocapacitacion;



-- evaluacion

INSERT INTO evaluacion (nombreexamen,preguntas,intentosDisponible,respuestascorrectas,fechainicio,fechafin,tiempodesarrollomins)VALUES
('Java',5,1,'A,B,A,C,A,','2025-06-02','2025-06-09',60),
('PHP',5,1,'A,B,D,B,A,','2025-06-02','2025-06-09',60),
('Python',5,1,'A,B,D,C,A,','2025-06-02','2025-06-09',60),
('C#',5,1,'A,C,D,A,A,','2025-06-10','2025-06-18',60),
('JS',5,1,'A,B,B,C,A,','2025-06-10','2025-06-18',60);


-- alumno
INSERT INTO alumno (nombre, apellidos, correo, tipodoc, numdoc, fechamodificacion)
VALUES
('Ana', 'López García', 'ana.lopez@example.com', 'DNI', '12345678A', '2025-05-01'),
('Carlos', 'Pérez Soto', 'carlos.perez@example.com', 'DNI', '87654321B', '2025-05-02'),
('María', 'Fernández Ruiz', 'maria.fernandez@example.com', 'DEX', 'D23456789', '2025-05-03'),
('Luis', 'Gómez Herrera', 'luis.gomez@example.com', 'PASS', 'P98765432', '2025-05-04'),
('Lucía', 'Martínez Cano', 'lucia.martinez@example.com', 'DNI', '11223344C', '2025-05-05'),
('Pedro', 'Sánchez Mora', 'pedro.sanchez@example.com', 'DEX', 'D99887766', '2025-05-06'),
('Elena', 'Ramírez Díaz', 'elena.ramirez@example.com', 'PASS', 'P77665544', '2025-05-07'),
('Diego', 'Castro León', 'diego.castro@example.com', 'DNI', '44332211D', '2025-05-08'),
('Sofía', 'Reyes Núñez', 'sofia.reyes@example.com', 'DEX', 'D12312312', '2025-05-09'),
('Jorge', 'Vargas Pino', 'jorge.vargas@example.com', 'PASS', 'P32132132', '2025-05-10');



-- respuestasmarcadas

INSERT INTO respuestasmarcadas (respuestasmarcadas, puntaje, estado, fechamodificacion, idevaluacion, idalumno)
VALUES
-- Alumno 1
('A,B,A,C,A', 18, 'Aprobado', '2025-06-10', 1, 1),
('A,B,D,B,A', 17, 'Aprobado', '2025-06-11', 2, 1),
('A,B,D,C,A', 19, 'Aprobado', '2025-06-12', 3, 1),

-- Alumno 2
('A,B,A,C,A', 16, 'Aprobado', '2025-06-10', 1, 2),
('A,C,D,A,A', 15, 'Aprobado', '2025-06-11', 4, 2),
('A,B,B,C,A', 17, 'Aprobado', '2025-06-12', 5, 2),

-- Alumno 3
('A,B,D,C,A', 13, 'Aprobado', '2025-06-10', 3, 3),
('A,C,D,A,A', 09, 'Desaprobado', '2025-06-11', 4, 3),
('A,B,A,C,A', 15, 'Aprobado', '2025-06-12', 1, 3),

-- Alumno 4
('A,B,D,B,A', 20, 'Aprobado', '2025-06-10', 2, 4),
('A,B,B,C,A', 19, 'Aprobado', '2025-06-11', 5, 4),
('A,B,D,C,A', 18, 'Aprobado', '2025-06-12', 3, 4),

-- Alumno 5
('A,B,A,C,A', 17, 'Aprobado', '2025-06-10', 1, 5),
('A,C,D,A,A', 16, 'Aprobado', '2025-06-11', 4, 5),
('A,B,B,C,A', 15, 'Aprobado', '2025-06-12', 5, 5),

-- Alumno 6
('A,B,D,B,A', 14, 'Aprobado', '2025-06-10', 2, 6),
('A,B,D,C,A', 10, 'Desaprobado', '2025-06-11', 3, 6),
('A,C,D,A,A', 12, 'Aprobado', '2025-06-12', 4, 6),

-- Alumno 7
('A,B,B,C,A', 20, 'Aprobado', '2025-06-10', 5, 7),
('A,B,A,C,A', 10, 'Desaprobado', '2025-06-11', 1, 7),
('A,B,D,B,A', 18, 'Aprobado', '2025-06-12', 2, 7);



