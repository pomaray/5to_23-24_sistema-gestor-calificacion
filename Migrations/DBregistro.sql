CREATE DATABASE DBregistro
USE [DBregistro]
/****** Object:  Table [dbo].[CALIFICACION_ACADEMICA]    Script Date: 3/5/2024 8:28:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CALIFICACION_ACADEMICA](
	[ID_AC] [int] IDENTITY(1,1) NOT NULL,
	[calificacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_AC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CALIFICACION_TECNICA]    Script Date: 3/5/2024 8:28:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CALIFICACION_TECNICA](
	[ID_TE] [int] IDENTITY(1,1) NOT NULL,
	[calificacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCENTE]    Script Date: 3/5/2024 8:28:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCENTE](
	[ID_DOCENTE] [int] IDENTITY(1,1) NOT NULL,
	[primer_nombre] [varchar](100) NOT NULL,
	[segundo_nombre] [varchar](100) NULL,
	[primer_apellido] [varchar](100) NOT NULL,
	[segundo_apellido] [varchar](100) NOT NULL,
	[cedula] [varchar](20) NOT NULL,
	[ID_AC1] [int] NULL,
	[ID_TE1] [int] NULL,
	[ID_MATERIA1] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DOCENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTUDIANTE]    Script Date: 3/5/2024 8:28:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTUDIANTE](
	[ID_ESTUDIANTE] [int] IDENTITY(1,1) NOT NULL,
	[primer_nombre] [varchar](100) NOT NULL,
	[segundo_nombre] [varchar](100) NULL,
	[primer_apellido] [varchar](100) NOT NULL,
	[segundo_apellido] [varchar](100) NOT NULL,
	[grado] [int] NOT NULL,
	[num_lista] [int] NOT NULL,
	[fecha_nacimiento] [date] NOT NULL,
	[ID_AC1] [int] NULL,
	[ID_TE1] [int] NULL,
	[ID_TECNICA1] [int] NULL,
	[ID_MATERIA1] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ESTUDIANTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIA]    Script Date: 3/5/2024 8:28:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIA](
	[ID_MATERIA] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_MATERIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TECNICA]    Script Date: 3/5/2024 8:28:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TECNICA](
	[ID_TECNICA] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TECNICA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 3/5/2024 8:28:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[ID_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](100) NOT NULL,
	[contraseña] [char](64) NOT NULL,
	[ID_ESTUDIANTE1] [int] NULL,
	[ID_DOCENTE1] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DOCENTE]  WITH CHECK ADD FOREIGN KEY([ID_AC1])
REFERENCES [dbo].[CALIFICACION_ACADEMICA] ([ID_AC])
GO
ALTER TABLE [dbo].[DOCENTE]  WITH CHECK ADD FOREIGN KEY([ID_MATERIA1])
REFERENCES [dbo].[MATERIA] ([ID_MATERIA])
GO
ALTER TABLE [dbo].[DOCENTE]  WITH CHECK ADD FOREIGN KEY([ID_TE1])
REFERENCES [dbo].[CALIFICACION_TECNICA] ([ID_TE])
GO
ALTER TABLE [dbo].[ESTUDIANTE]  WITH CHECK ADD FOREIGN KEY([ID_AC1])
REFERENCES [dbo].[CALIFICACION_ACADEMICA] ([ID_AC])
GO
ALTER TABLE [dbo].[ESTUDIANTE]  WITH CHECK ADD FOREIGN KEY([ID_MATERIA1])
REFERENCES [dbo].[MATERIA] ([ID_MATERIA])
GO
ALTER TABLE [dbo].[ESTUDIANTE]  WITH CHECK ADD FOREIGN KEY([ID_TE1])
REFERENCES [dbo].[CALIFICACION_TECNICA] ([ID_TE])
GO
ALTER TABLE [dbo].[ESTUDIANTE]  WITH CHECK ADD FOREIGN KEY([ID_TECNICA1])
REFERENCES [dbo].[TECNICA] ([ID_TECNICA])
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD FOREIGN KEY([ID_DOCENTE1])
REFERENCES [dbo].[DOCENTE] ([ID_DOCENTE])
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD FOREIGN KEY([ID_ESTUDIANTE1])
REFERENCES [dbo].[ESTUDIANTE] ([ID_ESTUDIANTE])
GO
/****** Object:  StoredProcedure [dbo].[DeleteEstudiante]    Script Date: 3/5/2024 8:28:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteEstudiante]
    @p_id_estudiante INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ESTUDIANTE WHERE ID_ESTUDIANTE = @p_id_estudiante)
    BEGIN
        DELETE FROM ESTUDIANTE WHERE ID_ESTUDIANTE = @p_id_estudiante;
        PRINT 'Estudiante eliminado correctamente.';
    END
    ELSE
    BEGIN
        RAISERROR('Error: El ID del estudiante no existe.', 16, 1);
    END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertarEstudiante]    Script Date: 3/5/2024 8:28:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertarEstudiante]
    @primer_nombre VARCHAR(100),
    @segundo_nombre VARCHAR(100),
    @primer_apellido VARCHAR(100),
    @segundo_apellido VARCHAR(100),
    @grado INT,
    @num_lista INT,
    @fecha_nacimiento DATE
AS
BEGIN
    IF NOT EXISTS (
        SELECT 1 
        FROM ESTUDIANTE 
        WHERE primer_nombre = @primer_nombre
          AND primer_apellido = @primer_apellido
          AND fecha_nacimiento = @fecha_nacimiento
    )
    BEGIN
        INSERT INTO ESTUDIANTE (primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, grado, num_lista, fecha_nacimiento)
        VALUES (@primer_nombre, @segundo_nombre, @primer_apellido, @segundo_apellido, @grado, @num_lista, @fecha_nacimiento);

 
        PRINT 'Nuevo estudiante insertado correctamente.';
    END
    ELSE
    BEGIN
        PRINT 'El estudiante ya existe.';
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[UpdateEstudiante]    Script Date: 3/5/2024 8:28:57 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateEstudiante]
    @id_estudiante INT,
    @primer_nombre VARCHAR(100),
    @segundo_nombre VARCHAR(100),
    @primer_apellido VARCHAR(100),
    @segundo_apellido VARCHAR(100),
    @grado INT,
    @num_lista INT,
    @fecha_nacimiento DATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM ESTUDIANTE WHERE ID_ESTUDIANTE = @id_estudiante)
    BEGIN
        UPDATE ESTUDIANTE
        SET 
            primer_nombre = @primer_nombre,
            segundo_nombre = @segundo_nombre,
            primer_apellido = @primer_apellido,
            segundo_apellido = @segundo_apellido,
            grado = @grado,
            num_lista = @num_lista,
            fecha_nacimiento = @fecha_nacimiento
        WHERE ID_ESTUDIANTE = @id_estudiante;

        PRINT 'Datos del estudiante actualizados correctamente.';
    END
    ELSE
    BEGIN
 
        PRINT 'El estudiante con ID ' + CONVERT(VARCHAR(10), @id_estudiante) + ' no existe. No se realizó la actualización.';
    END
END;
GO
