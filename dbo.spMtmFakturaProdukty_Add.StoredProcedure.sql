USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spMtmFakturaProdukty_Add]    Script Date: 26.07.2022 14:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 08.07.2022
-- Description:	Procedura dodawania produktów do istniejącej faktury (przed wystawieniem)
-- =============================================
CREATE PROCEDURE [dbo].[spMtmFakturaProdukty_Add] 
	@numer_faktury varchar(20),
	@id_produktu integer,
	@ilosc integer
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.mtm_faktura_produkty (numer_faktury, id_produktu, ilosc) 
	VALUES (@numer_faktury, @id_produktu, @ilosc);
END
GO
