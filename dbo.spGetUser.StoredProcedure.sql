USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spGetUser]    Script Date: 28.07.2022 18:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 26.07.2022
-- Description:	Procedura do zwrócenian nazwy obecnie zalogowanego użytkownika
-- =============================================
CREATE PROCEDURE [dbo].[spGetUser] 
AS
BEGIN
	SELECT ORIGINAL_LOGIN();
END
GO
