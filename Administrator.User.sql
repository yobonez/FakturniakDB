USE [FakturniakDB]
GO
/****** Object:  User [Administrator]    Script Date: 28.07.2022 18:04:48 ******/
CREATE USER [Administrator] FOR LOGIN [Administrator] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Administrator]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [Administrator]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [Administrator]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [Administrator]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [Administrator]
GO
ALTER ROLE [db_datareader] ADD MEMBER [Administrator]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [Administrator]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [Administrator]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [Administrator]
GO
