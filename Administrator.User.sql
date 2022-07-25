USE [FakturniakDB]
GO
/****** Object:  User [Administrator]    Script Date: 25.07.2022 15:29:27 ******/
CREATE USER [Administrator] FOR LOGIN [Administrator] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Administrator]
GO
