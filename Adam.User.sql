USE [FakturniakDB]
GO
/****** Object:  User [Adam]    Script Date: 29.07.2022 14:51:15 ******/
CREATE USER [Adam] FOR LOGIN [Adam] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_pracownik] ADD MEMBER [Adam]
GO
