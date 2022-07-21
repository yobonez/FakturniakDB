USE [FakturniakDB]
GO
/****** Object:  User [Administrator]    Script Date: 21.07.2022 14:46:06 ******/
CREATE USER [Administrator] FOR LOGIN [Administrator] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Administrator]
GO
