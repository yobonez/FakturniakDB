USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spProdukty_AddByBrutto]    Script Date: 22.07.2022 18:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 08.07.2022
-- Description:	Procedura dodawania produktu z użyciem ceny brutto, która będzie przeliczana na netto
-- =============================================
CREATE PROCEDURE [dbo].[spProdukty_AddByBrutto]
@nazwa nvarchar(300),
@cena_brutto numeric(9,2),
@id_jednostki integer,
@id_stawki integer

AS
BEGIN
	SET NOCOUNT ON;
	declare @cena_netto numeric(9,2);
	declare @stawka_vat integer;

	SELECT @stawka_vat = s.wartosc FROM dbo.stawki_vat s WHERE id_stawki = @id_stawki;
	SET @cena_netto = @cena_brutto * 100 / @stawka_vat;

	INSERT INTO dbo.produkty (nazwa, cena_netto, id_jednostki, id_stawki, cena_brutto) VALUES (@nazwa, @cena_netto, @id_jednostki, @id_stawki, @cena_brutto);
END
GO
