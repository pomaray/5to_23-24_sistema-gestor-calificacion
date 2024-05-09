USE [DBregistro]
GO
/****** Object:  User [Administrador]    Script Date: 7/5/2024 11:34:00 p. m. ******/
CREATE USER [Administrador] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[db_accessadmin]
GO
/****** Object:  User [DIgitador]    Script Date: 7/5/2024 11:34:00 p. m. ******/
CREATE USER [DIgitador] FOR LOGIN [Writer] WITH DEFAULT_SCHEMA=[db_datawriter]
GO
/****** Object:  User [Lector]    Script Date: 7/5/2024 11:34:00 p. m. ******/
CREATE USER [Lector] FOR LOGIN [Reader] WITH DEFAULT_SCHEMA=[db_datareader]
GO
ALTER ROLE [db_owner] ADD MEMBER [Administrador]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Administrador]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Administrador]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Administrador]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Administrador]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Administrador]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Administrador]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Administrador]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Administrador]
GO
