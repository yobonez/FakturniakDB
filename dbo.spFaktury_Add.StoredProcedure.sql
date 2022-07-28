USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spFaktury_Add]    Script Date: 28.07.2022 18:04:48 ******/
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
@id_typu_faktury integer,
@uwagi nvarchar(300),
@uwagi_wewnetrzne nvarchar(300)

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
									id_typu_faktury,
									uwagi,
									uwagi_wewnetrzne,
									wystawiajacy)

		VALUES					(@numer_faktury,
									@data_wystawienia,
									@data_sprzedazy,
									@miejsce_wystawienia,
									@id_sprzedawca,
									@id_nabywca,
									@id_sposob_platnosci,
									@termin_platnosci,
									@id_typu_faktury,
									@uwagi,
									@uwagi_wewnetrzne,
									ORIGINAL_LOGIN())
	END
END
GO
