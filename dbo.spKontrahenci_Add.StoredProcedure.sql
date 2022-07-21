USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spKontrahenci_Add]    Script Date: 21.07.2022 14:46:06 ******/
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
	@numer_konta nvarchar(32) = NULL,
	@swift nvarchar(8) = NULL

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO kontrahenci (imie, nazwisko, nazwa, nip, regon, krs, pesel, email, telefon, adres, kod_pocztowy, miasto, numer_konta, swift)
	VALUES (@imie, @nazwisko, @nazwa, @nip, @regon, @krs, @pesel, @email, @telefon, @adres, @kod_pocztowy, @miasto, @numer_konta, @swift)
END
GO
