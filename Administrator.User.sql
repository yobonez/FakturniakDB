USE [FakturniakDB]
GO
/****** Object:  User [Administrator]    Script Date: 20.07.2022 18:09:40 ******/
CREATE USER [Administrator] FOR LOGIN [Administrator] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Administrator]
GO
