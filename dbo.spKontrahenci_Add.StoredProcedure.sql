USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spKontrahenci_Add]    Script Date: 15.07.2022 14:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 06.07.2022
-- Description:	Procedura dodawania kontrahenta
-- =============================================
CREATE PROCEDURE [dbo].[spKontrahenci_Add] 
	@imie nvarchar(50),
	@nazwisko nvarchar(50),
	@nazwa nvarchar(50) = NULL,
	@nip nvarchar(10) = NULL,
	@regon nvarchar(14) = NULL,
	@krs nvarchar(10) = NULL,
	@pesel nvarchar(11) = NULL,
	@email nvarchar(10) = NULL,
	@telefon nvarchar(12) = NULL,
	@adres nvarchar(50),
	@kod_pocztowy nvarchar(6),
	@miasto nvarchar(50),
	@nr_konta nvarchar(23) = NULL,
	@swift nvarchar(8) = NULL,
	@termin_zaplaty date = NULL

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO kontrahenci (imie, nazwisko, nazwa, nip, regon, krs, pesel, email, telefon, adres, kod_pocztowy, miasto, nr_konta, swift, termin_zaplaty)
	VALUES (@imie, @nazwisko, @nazwa, @nip, @regon, @krs, @pesel, @email, @telefon, @adres, @kod_pocztowy, @miasto, @nr_konta, @swift, @termin_zaplaty)
END
GO
