USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spStawkiVAT_Delete]    Script Date: 29.07.2022 14:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 06.07.2022
-- Description:	Procedura usuwania stawki VAT
-- =============================================
CREATE PROCEDURE [dbo].[spStawkiVAT_Delete]
@id_stawki integer

AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM dbo.stawki_vat WHERE @id_stawki = id_stawki;
END
GO
