USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spFaktury_Add]    Script Date: 15.07.2022 14:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 08.07.2022
-- Description:	Procedura dodawania faktury
-- =============================================
CREATE PROCEDURE [dbo].[spFaktury_Add]
-- Faktura
@data_wystawienia date,
@data_sprzedazy date,
@miejsce_wystawienia nvarchar(50),
@id_sprzedawca integer,
@id_nabywca integer,
@id_sposob_platnosci integer,
@termin_platnosci date,
@id_typu_faktury integer
AS
BEGIN
	
	DECLARE @numer_faktury varchar(20) = dbo.funNumerFaktury_Gen(NULL, @id_typu_faktury);

	IF @id_nabywca = @id_sprzedawca
	BEGIN
		RAISERROR('Nie można utworzyć faktury pomiędzy tymi samymi kontrahentami.',16,1)
	END

	ELSE
	BEGIN
		INSERT INTO dbo.faktury (numer_faktury, 
									data_wystawienia, 
									data_sprzedazy, 
									miejsce_wystawienia, 
									id_sprzedawca, 
									id_nabywca, 
									id_sposob_platnosci, 
									termin_platnosci,
									id_typu_faktury)

		VALUES					(@numer_faktury,
									@data_wystawienia,
									@data_sprzedazy,
									@miejsce_wystawienia,
									@id_sprzedawca,
									@id_nabywca,
									@id_sposob_platnosci,
									@termin_platnosci,
									@id_typu_faktury)
	END
END
GO
