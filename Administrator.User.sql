USE [FakturniakDB]
GO
/****** Object:  User [Administrator]    Script Date: 19.07.2022 15:30:05 ******/
CREATE USER [Administrator] FOR LOGIN [Administrator] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Administrator]
GO
