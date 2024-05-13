INSERT INTO MATERIA (nombre, tipo_materia)
VALUES
('Matemáticas', 'TE'),
('Historia', 'AC'),
('Ciencias Naturales', 'TE'),
('Literatura', 'AC'),
('Educación Física', 'TE'),
('Inglés', 'AC'),
('Arte', 'TE'),
('Geografía', 'AC'),
('Informática', 'TE'),
('Música', 'AC'),
('Química', 'TE'),
('Biología', 'AC'),
('Economía', 'TE'),
('Física', 'AC'),
('Filosofía', 'TE'),
('Religión', 'AC'),
('Dibujo Técnico', 'TE'),
('Cálculo', 'AC'),
('Programación', 'TE'),
('Estadística', 'AC'),
('Álgebra', 'TE'),
('Sociología', 'AC'),
('Antropología', 'TE'),
('Psicología', 'AC'),
('Derecho', 'TE'),
('Comunicación', 'AC'),
('Mercadeo', 'TE'),
('Gestión Empresarial', 'AC'),
('Diseño Gráfico', 'TE'),
('Arquitectura', 'AC');


INSERT INTO TECNICA (nombre, descripcion)
VALUES
('Contabilidad', 'Técnica de contabilidad y finanzas'),
('Refrigeración', 'Técnica de sistemas de refrigeración'),
('Informática', 'Técnica de tecnologías de la información'),
('Electricidad', 'Técnica de sistemas eléctricos'),
('Electrónica', 'Técnica de dispositivos electrónicos'),
('Mercadeo', 'Técnica de estrategias de mercadeo'),
('Gastronomía', 'Técnica culinaria y de alimentos');


INSERT INTO CALIFICACION_RA (calificacion)
VALUES
(85), (78), (92), (65), (80),
(88), (75), (90), (82), (79),
(85), (91), (77), (83), (89),
(76), (84), (87), (70), (95),
(72), (81), (86), (93), (69),
(74), (94), (68), (73), (96);



INSERT INTO CALIFICACION_P (calificacion)
VALUES
(72), (85), (79), (91), (68),
(83), (77), (89), (74), (87),
(80), (92), (70), (88), (75),
(81), (90), (73), (86), (78),
(82), (94), (76), (93), (69),
(84), (95), (71), (96), (67);



INSERT INTO ESTUDIANTE (primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, grado, num_lista, fecha_nacimiento)
VALUES
('Juan', NULL, 'Pérez', 'González', 10, 1, '2005-03-15'),
('María', 'Luisa', 'Martínez', 'García', 11, 2, '2004-07-22'),
('Pedro', 'José', 'Gómez', 'Fernández', 9, 3, '2006-01-10'),
('Ana', 'María', 'Rodríguez', 'López', 10, 4, '2005-05-20'),
('Carlos', NULL, 'Sánchez', 'Martín', 11, 5, '2004-03-12'),
('Laura', 'Carmen', 'Gutiérrez', 'Pérez', 9, 6, '2006-02-28'),
('Luis', NULL, 'Hernández', 'Díaz', 10, 7, '2005-08-05'),
('Sofía', 'Isabel', 'Romero', 'Ruiz', 11, 8, '2004-11-15'),
('Javier', 'Antonio', 'García', 'Ramírez', 9, 9, '2006-04-25'),
('Elena', NULL, 'Fernández', 'Sanz', 10, 10, '2005-09-30'),
('Diego', 'Manuel', 'Pérez', 'Gómez', 11, 11, '2004-06-18'),
('Paula', 'Andrea', 'Martín', 'Hernández', 9, 12, '2006-03-08'),
('Mario', NULL, 'López', 'Suárez', 10, 13, '2005-10-12'),
('Valeria', 'María', 'Sanz', 'Romero', 11, 14, '2004-04-20'),
('Gabriel', 'Alejandro', 'Ruiz', 'Pérez', 9, 15, '2006-01-03'),
('Camila', NULL, 'Hernández', 'Martínez', 10, 16, '2005-11-28'),
('Lucas', 'Javier', 'Gómez', 'López', 11, 17, '2004-10-07'),
('Natalia', 'Isabel', 'Díaz', 'Fernández', 9, 18, '2006-07-14'),
('Daniel', NULL, 'Suárez', 'González', 10, 19, '2005-12-19'),
('Carla', 'Gabriela', 'Pérez', 'Sánchez', 11, 20, '2004-09-02'),
('Marcos', 'José', 'Martínez', 'Romero', 9, 21, '2006-08-25'),
('Sara', NULL, 'López', 'Hernández', 10, 22, '2005-02-11'),
('Alejandro', 'Pablo', 'García', 'Sanz', 11, 23, '2004-12-05'),
('Lucía', 'Victoria', 'Ruiz', 'Gómez', 9, 24, '2006-06-30'),
('Andrés', NULL, 'Fernández', 'Pérez', 10, 25, '2005-01-17'),
('Valentina', 'Isabella', 'Sanz', 'Martínez', 11, 26, '2004-08-21'),
('Mateo', 'Antonio', 'Pérez', 'Gómez', 9, 27, '2006-04-04'),
('Isabella', NULL, 'Gómez', 'López', 10, 28, '2005-10-09'),
('Julián', 'Esteban', 'Hernández', 'Ruiz', 11, 29, '2004-03-23'),
('Luciana', 'María', 'Martínez', 'Fernández', 9, 30, '2006-02-14');


INSERT INTO DOCENTE (primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, cedula, fecha_nacimiento, correo, num_telefonico)
VALUES
('María', 'Isabel', 'González', 'López', '1234567890', '1978-04-15', 'maria@example.com', '555-1234'),
('Juan', 'Antonio', 'Martínez', 'García', '9876543210', '1985-06-20', 'juan@example.com', '555-5678'),
('Laura', NULL, 'Fernández', 'Sánchez', '5678901234', '1980-10-25', 'laura@example.com', '555-9876'),
('Carlos', 'Manuel', 'Pérez', 'Martínez', '0123456789', '1983-02-08', 'carlos@example.com', '555-3456'),
('Ana', 'Luisa', 'García', 'Romero', '4567890123', '1975-09-12', 'ana@example.com', '555-7890'),
('Pedro', NULL, 'Martín', 'Hernández', '7890123456', '1970-07-30', 'pedro@example.com', '555-2345'),
('Sofía', 'Carmen', 'López', 'Suárez', '2345678901', '1982-11-05', 'sofia@example.com', '555-6789'),
('Javier', 'Andrés', 'Hernández', 'Díaz', '8901234567', '1977-03-18', 'javier@example.com', '555-4567'),
('Elena', 'Isabel', 'Gómez', 'Pérez', '3456789012', '1984-08-22', 'elena@example.com', '555-8901'),
('Diego', 'Antonio', 'Fernández', 'González', '9012345678', '1973-12-10', 'diego@example.com', '555-1234'),
('Paula', NULL, 'Sánchez', 'Martínez', '6789012345', '1979-05-28', 'paula@example.com', '555-5678'),
('Luis', 'Manuel', 'Martínez', 'Romero', '2345678901', '1981-01-03', 'luis@example.com', '555-9876'),
('Lucía', 'Isabel', 'Romero', 'Gómez', '8901234567', '1974-06-15', 'lucia@example.com', '555-3456'),
('Gabriel', NULL, 'Suárez', 'López', '5678901234', '1986-09-20', 'gabriel@example.com', '555-7890'),
('Camila', 'Antonia', 'Hernández', 'Martín', '1234567890', '1972-04-28', 'camila@example.com', '555-2345'),
('Andrés', 'Manuel', 'Gómez', 'Sánchez', '8901234567', '1976-12-05', 'andres@example.com', '555-6789'),
('Valentina', 'Isabella', 'Pérez', 'Romero', '4567890123', '1987-07-10', 'valentina@example.com', '555-4567'),
('Mateo', 'Antonio', 'Romero', 'Fernández', '0123456789', '1988-02-14', 'mateo@example.com', '555-8901'),
('Isabella', NULL, 'González', 'Hernández', '6789012345', '1989-04-30', 'isabella@example.com', '555-1234'),
('Julián', 'Andrés', 'Martínez', 'Gómez', '2345678901', '1971-08-20', 'julian@example.com', '555-5678'),
('Luciana', 'Carmen', 'Hernández', 'Sánchez', '9012345678', '1978-03-15', 'luciana@example.com', '555-9876'),
('Martín', 'Antonio', 'Gómez', 'Martínez', '3456789012', '1973-06-05', 'martin@example.com', '555-3456'),
('Carolina', NULL, 'Sánchez', 'Romero', '8901234567', '1980-11-12', 'carolina@example.com', '555-7890'),
('Sebastián', 'Manuel', 'Romero', 'Pérez', '5678901234', '1985-09-25', 'sebastian@example.com', '555-2345'),
('Valeria', 'Isabel', 'González', 'López', '1234567890', '1976-02-03', 'valeria@example.com', '555-6789'),
('Mateo', NULL, 'Martínez', 'Sánchez', '7890123456', '1979-04-18', 'mateo@example.com', '555-4567'),
('Renata', 'María', 'Hernández', 'Gómez', '2345678901', '1983-07-22', 'renata@example.com', '555-8901'),
('Santiago', 'Antonio', 'Gómez', 'Romero', '9012345678', '1984-10-08', 'santiago@example.com', '555-1234'),
('Luciana', NULL, 'Romero', 'Martínez', '3456789012', '1977-03-25', 'luciana@example.com', '555-5678'),
('Simón', 'Andrés', 'Hernández', 'Sánchez', '8901234567', '1972-12-10', 'simon@example.com', '555-9876');

