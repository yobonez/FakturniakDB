USE [FakturniakDB]
GO
/****** Object:  User [Pracownik]    Script Date: 28.07.2022 18:04:48 ******/
CREATE USER [Pracownik] FOR LOGIN [Pracownik] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_pracownik] ADD MEMBER [Pracownik]
GO
