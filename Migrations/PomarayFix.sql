CREATE DATABASE POMARAY

CREATE TABLE Estudiantes (
    EstudianteID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Apellido NVARCHAR(100),
    FechaNacimiento DATE,

);


CREATE TABLE Materias (
    MateriaID INT PRIMARY KEY,
    Nombre NVARCHAR(100)
);


CREATE TABLE MateriasTecnicas (
    MateriaTecnicaID INT PRIMARY KEY,
    Nombre NVARCHAR(100)
);


CREATE TABLE EstudianteMateria (
    EstudianteID INT,
    MateriaID INT,
    PRIMARY KEY (EstudianteID, MateriaID),
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (MateriaID) REFERENCES Materias(MateriaID)
);

CREATE TABLE Calificaciones (
    EstudianteID INT,
    MateriaID INT,
    Periodo INT,
    Calificacion DECIMAL(5,2),
    PRIMARY KEY (EstudianteID, MateriaID, Periodo),
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (MateriaID) REFERENCES Materias(MateriaID)
);

CREATE TABLE EstudianteMateriaTecnica (
    EstudianteID INT,
    MateriaTecnicaID INT,
    PRIMARY KEY (EstudianteID, MateriaTecnicaID),
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (MateriaTecnicaID) REFERENCES MateriasTecnicas(MateriaTecnicaID)
);

CREATE TABLE CalificacionesMateriasTecnicas (
    EstudianteID INT,
    MateriaTecnicaID INT,
    Periodo INT,
    Calificacion DECIMAL(5,2),
    PRIMARY KEY (EstudianteID, MateriaTecnicaID, Periodo),
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (MateriaTecnicaID) REFERENCES MateriasTecnicas(MateriaTecnicaID)
);

CREATE TABLE Asistencia (
    AsistenciaID INT PRIMARY KEY,
    EstudianteID INT,
    Fecha DATE,
    Asistio BIT, -- Puede ser 1 (asistió) o 0 (no asistió)
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID)
);

-- Procedimiento almacenado para insertar Estudiantes
CREATE PROCEDURE InsertarEstudiante
    @Nombre NVARCHAR(100),
    @Apellido NVARCHAR(100),
    @FechaNacimiento DATE
AS
BEGIN
    INSERT INTO Estudiantes (Nombre, Apellido, FechaNacimiento)
    VALUES (@Nombre, @Apellido, @FechaNacimiento);
END;
GO

-- Procedimiento almacenado para insertar Materias
CREATE PROCEDURE InsertarMateria
    @Nombre NVARCHAR(100)
AS
BEGIN
    INSERT INTO Materias (Nombre)
    VALUES (@Nombre);
END;
GO

-- Procedimiento almacenado para insertar Materias Técnicas
CREATE PROCEDURE InsertarMateriaTecnica
    @Nombre NVARCHAR(100)
AS
BEGIN
    INSERT INTO MateriasTecnicas (Nombre)
    VALUES (@Nombre);
END;
GO

-- Procedimiento almacenado para asignar Materia a Estudiante
CREATE PROCEDURE AsignarMateriaAEstudiante
    @EstudianteID INT,
    @MateriaID INT
AS
BEGIN
    INSERT INTO EstudianteMateria (EstudianteID, MateriaID)
    VALUES (@EstudianteID, @MateriaID);
END;
GO

-- Procedimiento almacenado para registrar Calificación
CREATE PROCEDURE RegistrarCalificacion
    @EstudianteID INT,
    @MateriaID INT,
    @Periodo INT,
    @Calificacion DECIMAL(5,2)
AS
BEGIN
    INSERT INTO Calificaciones (EstudianteID, MateriaID, Periodo, Calificacion)
    VALUES (@EstudianteID, @MateriaID, @Periodo, @Calificacion);
END;
GO

-- Procedimiento almacenado para inscribir Materia Técnica a Estudiante
CREATE PROCEDURE InscribirMateriaTecnicaAEstudiante
    @EstudianteID INT,
    @MateriaTecnicaID INT
AS
BEGIN
    INSERT INTO EstudianteMateriaTecnica (EstudianteID, MateriaTecnicaID)
    VALUES (@EstudianteID, @MateriaTecnicaID);
END;
GO

-- Procedimiento almacenado para registrar Calificación de Materia Técnica
CREATE PROCEDURE RegistrarCalificacionMateriaTecnica
    @EstudianteID INT,
    @MateriaTecnicaID INT,
    @Periodo INT,
    @Calificacion DECIMAL(5,2)
AS
BEGIN
    INSERT INTO CalificacionesMateriasTecnicas (EstudianteID, MateriaTecnicaID, Periodo, Calificacion)
    VALUES (@EstudianteID, @MateriaTecnicaID, @Periodo, @Calificacion);
END;
GO

