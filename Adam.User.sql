USE [FakturniakDB]
GO
/****** Object:  User [Adam]    Script Date: 28.07.2022 18:04:48 ******/
CREATE USER [Adam] FOR LOGIN [Adam] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_pracownik] ADD MEMBER [Adam]
GO
