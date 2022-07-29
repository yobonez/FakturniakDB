USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spJednostkiMiary_GetAll]    Script Date: 29.07.2022 14:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 26.07.2022
-- Description:	Procedura pokazywania wszystkich jednostek miary
-- =============================================
CREATE PROCEDURE [dbo].[spJednostkiMiary_GetAll]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.jednostki_miary
END
GO
