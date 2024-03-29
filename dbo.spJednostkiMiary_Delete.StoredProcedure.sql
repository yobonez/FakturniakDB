USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spJednostkiMiary_Delete]    Script Date: 29.07.2022 14:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 06.07.2022
-- Description:	Procedura dodawania jednostki miary
-- =============================================
CREATE PROCEDURE [dbo].[spJednostkiMiary_Delete]
@id_jednostki integer
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM dbo.jednostki_miary WHERE @id_jednostki = id_jednostki;
END
GO
