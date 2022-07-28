USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spStawkiVAT_Add]    Script Date: 28.07.2022 18:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 06.07.2022
-- Description:	Procedura dodawania stawki VAT
-- =============================================

CREATE PROCEDURE [dbo].[spStawkiVAT_Add]
@wartosc integer

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO dbo.stawki_vat(wartosc) VALUES (@wartosc);
	--DELETE FROM dbo.sposoby_platnosci WHERE @id_sposob_platnosci = id_sposob_platnosci;
END
GO
