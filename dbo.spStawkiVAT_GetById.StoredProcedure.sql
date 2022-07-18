USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spStawkiVAT_GetById]    Script Date: 18.07.2022 14:44:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 13.07.2022
-- Description:	Procedura pokazywania stawki VAT
-- =============================================

CREATE PROCEDURE [dbo].[spStawkiVAT_GetById]
@id_stawki integer

AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.stawki_vat WHERE id_stawki = @id_stawki
END
GO
