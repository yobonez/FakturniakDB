USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spMtmFakturaProdukty_GetByNumerFaktury]    Script Date: 28.07.2022 18:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 28.07.2022
-- Description:	Procedura pokazywania wszystkich produktów z faktury
-- =============================================
CREATE PROCEDURE [dbo].[spMtmFakturaProdukty_GetByNumerFaktury] 
@numer_faktury varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.mtm_faktura_produkty WHERE numer_faktury = @numer_faktury;
END
GO
