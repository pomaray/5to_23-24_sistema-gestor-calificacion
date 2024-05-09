CREATE DATABASE asistencia_y_calificacion;


USE asistencia_y_calificacion;


CREATE TABLE Estudiantes (
    EstudianteID INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Apellido VARCHAR(100),
    Edad INT,
    Email VARCHAR(100)
);

CREATE TABLE Clases (
    ClaseID INT PRIMARY KEY,
    NombreClase VARCHAR(100),
    Profesor VARCHAR(100),
    Horario VARCHAR(100)
);


CREATE TABLE RegistroAsistencia (
    RegistroID INT PRIMARY KEY,
    EstudianteID INT,
    ClaseID INT,
    Fecha DATE,
    Asistencia INT,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (ClaseID) REFERENCES Clases(ClaseID)
);


CREATE TABLE Calificaciones (
    CalificacionID INT PRIMARY KEY,
    EstudianteID INT,
    ClaseID INT,
    Calificacion FLOAT,
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (ClaseID) REFERENCES Clases(ClaseID)
);




INSERT INTO Estudiantes (EstudianteID, Nombre, Apellido, Edad, Email)
VALUES
    (1, 'Juan', 'Pérez', 20, 'juan@example.com'),
    (2, 'María', 'Gómez', 22, 'maria@example.com'),
    (3, 'Carlos', 'Martínez', 21, 'carlos@example.com');


INSERT INTO Clases (ClaseID, NombreClase, Profesor, Horario)
VALUES
    (1, 'Matemáticas', 'Profesor Rodríguez', 'Lunes y Miércoles 9:00 - 11:00'),
    (2, 'Historia', 'Profesora López', 'Martes y Jueves 10:00 - 12:00'),
    (3, 'Inglés', 'Profesora García', 'Lunes y Viernes 11:00 - 13:00');


INSERT INTO RegistroAsistencia (RegistroID, EstudianteID, ClaseID, Fecha, Asistencia)
VALUES
    (1, 1, 1, '2024-04-01', 1),
    (2, 1, 2, '2024-04-02', 1),
    (3, 2, 1, '2024-04-01', 1),
    (4, 2, 3, '2024-04-04', 1),
    (5, 3, 3, '2024-04-04', 1);



INSERT INTO Calificaciones (CalificacionID, EstudianteID, ClaseID, Calificacion)
VALUES
    (1, 1, 1, 85),
    (2, 1, 2, 90),
    (3, 2, 1, 78),
    (4, 2, 3, 82),
    (5, 3, 3, 88);