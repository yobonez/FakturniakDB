USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spProdukty_Add]    Script Date: 08.07.2022 15:32:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 06.07.2022
-- Description:	Procedura dodawania produktu
-- =============================================
CREATE PROCEDURE [dbo].[spProdukty_Add]
@nazwa nvarchar(50),
@cena_netto money,
@cena_brutto money,
@id_jednostki integer,
@id_stawki integer

AS
BEGIN
	SET NOCOUNT ON;
	declare @stawka_vat integer;
	SELECT @stawka_vat = s.wartosc FROM dbo.stawki_vat s WHERE @id_stawki = id_stawki
	
	declare @cena_brutto_check money;
	declare @cena_netto_check money;

	SET @cena_brutto_check = @cena_brutto;
	SET @cena_netto_check = @cena_brutto * 100 / @stawka_vat;
	

	IF @cena_netto_check = @cena_netto 
	BEGIN
		INSERT INTO dbo.produkty (nazwa, cena_netto, id_jednostki, id_stawki, cena_brutto) VALUES (@nazwa, @cena_netto, @id_jednostki, @id_stawki, @cena_brutto);
	END

	ELSE
	BEGIN
		RAISERROR('Nieprawidlowe przeliczenie stawki VAT.', 16, 1);
	END

END
GO
