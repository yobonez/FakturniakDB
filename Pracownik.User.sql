USE [FakturniakDB]
GO
/****** Object:  User [Pracownik]    Script Date: 29.07.2022 14:51:15 ******/
CREATE USER [Pracownik] FOR LOGIN [Pracownik] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_pracownik] ADD MEMBER [Pracownik]
GO
