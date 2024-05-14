-- Creaci�n de la base de datos
CREATE DATABASE SistemaEducativo;
GO

USE SistemaEducativo;
GO

-- Tabla de Estudiantes
CREATE TABLE Estudiantes (
    EstudianteID INT PRIMARY KEY,
    NombreCompleto NVARCHAR(100),
    FechaNacimiento DATE,
    Direccion NVARCHAR(100),
    Telefono NVARCHAR(20),
    CorreoElectronico NVARCHAR(100),
    Genero NVARCHAR(10),
    Ciudad NVARCHAR(50),
    Estado NVARCHAR(50),
    Pais NVARCHAR(50),
    GradoID INT FOREIGN KEY REFERENCES Grados(GradoID)
);
GO

-- Tabla de Grados/Niveles Acad�micos
CREATE TABLE Grados (
    GradoID INT PRIMARY KEY,
    NombreGrado NVARCHAR(50)
);
GO

-- Tabla de Cursos
CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    NombreCurso NVARCHAR(100),
    Descripcion NVARCHAR(1000),
    Horarios NVARCHAR(100),
    ProfesorID INT FOREIGN KEY REFERENCES Profesores(ProfesorID)
);
GO

-- Tabla de Profesores
CREATE TABLE Profesores (
    ProfesorID INT PRIMARY KEY,
    NombreCompleto NVARCHAR(100),
    Especialidad NVARCHAR(100),
    CorreoElectronico NVARCHAR(100),
    Telefono NVARCHAR(20),
    Descripcion NVARCHAR(1000)
);
GO

-- Tabla de Calificaciones
CREATE TABLE Calificaciones (
    CalificacionID INT PRIMARY KEY,
    EstudianteID INT FOREIGN KEY REFERENCES Estudiantes(EstudianteID),
    CursoID INT FOREIGN KEY REFERENCES Cursos(CursoID),
    Calificacion DECIMAL(5, 2),
    Fecha DATE
);
GO

-- Tabla de Asistencia
CREATE TABLE Asistencia (
    AsistenciaID INT PRIMARY KEY,
    EstudianteID INT FOREIGN KEY REFERENCES Estudiantes(EstudianteID),
    Fecha DATE,
    Asistio BIT
);
GO

-- Tabla de Recursos Educativos
CREATE TABLE RecursosEducativos (
    RecursoID INT PRIMARY KEY,
    NombreRecurso NVARCHAR(100),
    Descripcion NVARCHAR(1000),
    TipoRecurso NVARCHAR(50),
    Disponibilidad BIT
);
GO

-- Tabla de Tareas y Evaluaciones
CREATE TABLE TareasEvaluaciones (
    TareaID INT PRIMARY KEY,
    CursoID INT FOREIGN KEY REFERENCES Cursos(CursoID),
    Descripcion NVARCHAR(1000),
    FechaEntrega DATE,
    Puntaje DECIMAL(5, 2)
);
GO

-- Tabla de Comunicaciones
CREATE TABLE Comunicaciones (
    ComunicacionID INT PRIMARY KEY,
    EmisorID INT FOREIGN KEY REFERENCES Usuarios(UsuarioID),
    ReceptorID INT FOREIGN KEY REFERENCES Usuarios(UsuarioID),
    Mensaje NVARCHAR(MAX),
    FechaEnvio DATETIME
);
GO

-- Tabla de Usuarios (para gesti�n de permisos y roles)
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY,
    NombreUsuario NVARCHAR(50),
    Contrasena NVARCHAR(50),
    Rol NVARCHAR(50)
);
GO

-- Tabla de Materias
CREATE TABLE Materias (
    MateriaID INT PRIMARY KEY,
    NombreMateria NVARCHAR(100),
    Descripcion NVARCHAR(1000),
    Creditos INT,
    Nivel NVARCHAR(50)
);
GO

-- Tabla de Biblioteca
CREATE TABLE Biblioteca (
    LibroID INT PRIMARY KEY,
    Titulo NVARCHAR(200),
    Autor NVARCHAR(100),
    Editor NVARCHAR(100),
    ISBN NVARCHAR(20),
    Cantidad INT
);
GO

-- Tabla de Laboratorios
CREATE TABLE Laboratorios (
    LaboratorioID INT PRIMARY KEY,
    NombreLaboratorio NVARCHAR(100),
    Descripcion NVARCHAR(1000),
    Equipamiento NVARCHAR(1000),
    Capacidad INT
);
GO

-- Tabla de Eventos
CREATE TABLE Eventos (
    EventoID INT PRIMARY KEY,
    NombreEvento NVARCHAR(200),
    Descripcion NVARCHAR(1000),
    FechaInicio DATETIME,
    FechaFin DATETIME,
    Lugar NVARCHAR(200)
);
GO

-- Tabla de Noticias
CREATE TABLE Noticias (
    NoticiaID INT PRIMARY KEY,
    Titulo NVARCHAR(200),
    Contenido NVARCHAR(MAX),
    FechaPublicacion DATETIME
);
GO

-- Tabla de Horarios
CREATE TABLE Horarios (
    HorarioID INT PRIMARY KEY,
    DiaSemana NVARCHAR(20),
    HoraInicio TIME,
    HoraFin TIME,
    CursoID INT FOREIGN KEY REFERENCES Cursos(CursoID)
);
GO

-- Tabla de ActividadesExtracurriculares
CREATE TABLE ActividadesExtracurriculares (
    ActividadID INT PRIMARY KEY,
    NombreActividad NVARCHAR(200),
    Descripcion NVARCHAR(1000),
    FechaInicio DATE,
    FechaFin DATE,
    Lugar NVARCHAR(200)
);
GO



-- Insertar datos en la tabla Grados
INSERT INTO Grados (GradoID, NombreGrado)
VALUES 
(1, 'Primero'),
(2, 'Segundo'),
(3, 'Tercero'),
(4, 'Cuarto'),
(5, 'Quinto'),
(6, 'Sexto'),
(7, 'S�ptimo'),
(8, 'Octavo'),
(9, 'Noveno'),
(10, 'D�cimo'),
(11, 'Und�cimo'),
(12, 'Duod�cimo');

-- Insertar datos en la tabla Profesores
INSERT INTO Profesores (ProfesorID, NombreCompleto, Especialidad, CorreoElectronico, Telefono, Descripcion)
VALUES 
(1, 'Mar�a Mart�nez', 'Matem�ticas', 'maria.martinez@example.com', '123456789', 'Experiencia en ense�anza de matem�ticas a nivel secundaria.'),
(2, 'Juan Rodr�guez', 'Ciencias', 'juan.rodriguez@example.com', '987654321', 'Especialista en f�sica y qu�mica aplicada.'),
(3, 'Ana Gonz�lez', 'Historia', 'ana.gonzalez@example.com', '555555555', 'Amplio conocimiento en historia universal y local.'),
(4, 'Pedro P�rez', 'Literatura', 'pedro.perez@example.com', '111111111', 'Experto en literatura cl�sica y contempor�nea.');

-- Insertar datos en la tabla Materias
INSERT INTO Materias (MateriaID, NombreMateria, Descripcion, Creditos, Nivel)
VALUES 
(1, 'Matem�ticas', 'Curso introductorio a las matem�ticas.', 4, 'B�sico'),
(2, 'Biolog�a', 'Estudio detallado de la biolog�a celular.', 3, 'Intermedio'),
(3, 'Historia', 'Recorrido por los eventos hist�ricos m�s importantes.', 2, 'B�sico'),
(4, 'Literatura', 'Estudio de obras literarias y an�lisis de textos.', 3, 'Intermedio');

-- Insertar datos en la tabla Usuarios
INSERT INTO Usuarios (UsuarioID, NombreUsuario, Contrasena, Rol)
VALUES 
(1, 'admin', 'admin123', 'Administrador'),
(2, 'profesor1', 'prof123', 'Profesor'),
(3, 'estudiante1', 'estu123', 'Estudiante');

-- Insertar datos en la tabla Estudiantes
INSERT INTO Estudiantes (EstudianteID, NombreCompleto, FechaNacimiento, Direccion, Telefono, CorreoElectronico, Genero, Ciudad, Estado, Pais, GradoID)
VALUES 
(1, 'Carlos S�nchez', '2005-03-15', 'Calle 123', '123456789', 'carlos@email.com', 'Masculino', 'Ciudad de M�xico', 'Ciudad de M�xico', 'M�xico', 1),
(2, 'Laura Garc�a', '2006-07-20', 'Avenida 456', '987654321', 'laura@email.com', 'Femenino', 'Guadalajara', 'Jalisco', 'M�xico', 2),
(3, 'David L�pez', '2004-11-10', 'Plaza Principal', '55555555', 'david@email.com', 'Masculino', 'Monterrey', 'Nuevo Le�n', 'M�xico', 3),
(4, 'Alejandra Rodr�guez', '2007-02-05', 'Calle 789', '999888777', 'alejandra@email.com', 'Femenino', 'Puebla', 'Puebla', 'M�xico', 4),
(5, 'Javier Mart�nez', '2004-09-18', 'Boulevard 101', '222333444', 'javier@email.com', 'Masculino', 'Tijuana', 'Baja California', 'M�xico', 5),
(6, 'Sof�a Hern�ndez', '2006-05-30', 'Avenida 111', '666777888', 'sofia@email.com', 'Femenino', 'Hermosillo', 'Sonora', 'M�xico', 6),
(7, 'Diego Garc�a', '2005-08-12', 'Calle 222', '333444555', 'diego@email.com', 'Masculino', 'Canc�n', 'Quintana Roo', 'M�xico', 7),
(8, 'Valeria Ram�rez', '2004-12-25', 'Avenida 333', '888999000', 'valeria@email.com', 'Femenino', 'Veracruz', 'Veracruz', 'M�xico', 8),
(9, 'Emilio Guti�rrez', '2007-01-08', 'Calle 444', '111222333', 'emilio@email.com', 'Masculino', 'Merida', 'Yucat�n', 'M�xico', 9),
(10, 'Luc�a Flores', '2006-04-17', 'Avenida 555', '444555666', 'lucia@email.com', 'Femenino', 'Culiac�n', 'Sinaloa', 'M�xico', 10),
(11, 'Andr�s D�az', '2005-10-29', 'Calle 666', '777888999', 'andres@email.com', 'Masculino', 'Toluca', 'Estado de M�xico', 'M�xico', 11),
(12, 'Mariana Torres', '2007-03-03', 'Avenida 777', '222111333', 'mariana@email.com', 'Femenino', 'Acapulco', 'Guerrero', 'M�xico', 12),
(13, 'Fernando Reyes', '2004-07-14', 'Calle 888', '999111222', 'fernando@email.com', 'Masculino', 'Chihuahua', 'Chihuahua', 'M�xico', 1),
(14, 'Ana Garc�a', '2006-02-20', 'Avenida 999', '333444555', 'ana@email.com', 'Femenino', 'Morelia', 'Michoac�n', 'M�xico', 2),
(15, 'Jorge Mart�nez', '2005-06-10', 'Calle 1010', '666555444', 'jorge@email.com', 'Masculino', 'Aguascalientes', 'Aguascalientes', 'M�xico', 3),
(16, 'Luisa P�rez', '2007-09-05', 'Avenida 1111', '222444666', 'luisa@email.com', 'Femenino', 'Saltillo', 'Coahuila', 'M�xico', 4),
(17, 'Roberto S�nchez', '2004-11-28', 'Calle 1212', '333222111', 'roberto@email.com', 'Masculino', 'Durango', 'Durango', 'M�xico', 5),
(18, 'Marisol Rivera', '2006-08-07', 'Avenida 1313', '555888999', 'marisol@email.com', 'Femenino', 'Tepic', 'Nayarit', 'M�xico', 6),
(19, 'Gabriel Hern�ndez', '2005-12-19', 'Calle 1414', '777888111', 'gabriel@email.com', 'Masculino', 'Ciudad Victoria', 'Tamaulipas', 'M�xico', 7),
(20, 'Natalia L�pez', '2007-01-25', 'Avenida 1515', '999777888', 'natalia@email.com', 'Femenino', 'Mexicali', 'Baja California', 'M�xico', 8);

-- Insertar datos en la tabla Cursos
INSERT INTO Cursos (CursoID, NombreCurso, Descripcion, Horarios, ProfesorID)
VALUES 
(1, 'Matem�ticas B�sicas', 'Curso introductorio a las matem�ticas.', 'Lunes y Mi�rcoles 8:00-10:00', 1),
(2, 'Biolog�a Avanzada', 'Estudio detallado de la biolog�a celular.', 'Martes y Jueves 10:00-12:00', 2),
(3, 'Historia del Mundo', 'Recorrido por los eventos hist�ricos m�s importantes.', 'Viernes 14:00-16:00', 3),
(4, 'Literatura Universal', 'Estudio de obras literarias y an�lisis de textos.', 'Lunes y Mi�rcoles 14:00-16:00', 4),
(5, 'F�sica Aplicada', 'Introducci�n a los conceptos b�sicos de la f�sica.', 'Martes y Jueves 8:00-10:00', 1),
(6, 'Qu�mica Org�nica', 'Estudio de los compuestos org�nicos.', 'Viernes 10:00-12:00', 2),
(7, 'Geograf�a Mundial', 'Estudio de la geograf�a pol�tica y f�sica del mundo.', 'Lunes 16:00-18:00', 3),
(8, 'Arte y Cultura', 'Exploraci�n de distintas expresiones art�sticas y culturales.', 'Mi�rcoles 16:00-18:00', 4),
(9, 'Educaci�n F�sica', 'Desarrollo de habilidades f�sicas y deportivas.', 'Martes 16:00-18:00', 1),
(10, 'Tecnolog�a e Innovaci�n', 'Introducci�n a las nuevas tecnolog�as y su impacto.', 'Jueves 16:00-18:00', 2),
(11, 'M�sica y Sonido', 'Exploraci�n de la teor�a musical y pr�ctica instrumental.', 'Viernes 16:00-18:00', 3),
(12, '�tica y Valores', 'Reflexi�n sobre principios �ticos y morales.', 'Lunes 18:00-20:00', 4);

-- Insertar datos en la tabla Calificaciones
INSERT INTO Calificaciones (CalificacionID, EstudianteID, CursoID, Calificacion, Fecha)
VALUES 
(1, 1, 1, 85.5, '2024-05-10'),
(2, 1, 2, 90.0, '2024-05-15'),
(3, 2, 1, 78.0, '2024-05-10'),
(4, 2, 2, 88.5, '2024-05-15'),
(5, 3, 3, 95.0, '2024-05-20'),
(6, 3, 4, 82.0, '2024-05-20'),
(7, 4, 5, 90.0, '2024-05-25'),
(8, 4, 6, 85.5, '2024-05-30'),
(9, 5, 7, 88.0, '2024-05-25'),
(10, 5, 8, 92.0, '2024-06-01'),
(11, 6, 9, 75.0, '2024-05-30'),
(12, 6, 10, 80.5, '2024-06-01'),
(13, 7, 11, 85.0, '2024-06-05'),
(14, 7, 12, 90.0, '2024-06-10'),
(15, 8, 1, 92.0, '2024-06-05'),
(16, 8, 2, 88.5, '2024-06-10'),
(17, 9, 3, 90.0, '2024-06-15'),
(18, 9, 4, 85.0, '2024-06-20'),
(19, 10, 5, 87.5, '2024-06-15'),
(20, 10, 6, 83.0, '2024-06-20');
