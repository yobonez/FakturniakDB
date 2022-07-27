USE [FakturniakDB]
GO
/****** Object:  User [Pracownik]    Script Date: 27.07.2022 15:11:34 ******/
CREATE USER [Pracownik] FOR LOGIN [Pracownik] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_pracownik] ADD MEMBER [Pracownik]
GO
