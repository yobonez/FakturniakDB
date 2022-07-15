USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spProdukty_Add]    Script Date: 15.07.2022 14:56:09 ******/
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
@nazwa nvarchar(300),
@cena_netto numeric(9,2),
@cena_brutto numeric(9,2),
@id_jednostki integer,
@id_stawki integer

AS
BEGIN
	SET NOCOUNT ON;
	declare @stawka_vat integer;
	SELECT @stawka_vat = s.wartosc FROM dbo.stawki_vat s WHERE @id_stawki = id_stawki
	
	declare @cena_brutto_check numeric(9,2);
	declare @cena_netto_check numeric(9,2);

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
