USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spJednostkiMiary_GetById]    Script Date: 27.07.2022 15:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 13.07.2022
-- Description:	Procedura pokazywania jednostki miary
-- =============================================
CREATE PROCEDURE [dbo].[spJednostkiMiary_GetById]
@id_jednostki varchar(8)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.jednostki_miary WHERE id_jednostki = @id_jednostki;
END
GO
