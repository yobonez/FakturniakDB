USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spMtmFakturaProdukty_Delete]    Script Date: 28.07.2022 18:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 08.07.2022
-- Description:	Procedura usuwania produktów z istniejącej faktury (przed wystawieniem)
-- =============================================
CREATE PROCEDURE [dbo].[spMtmFakturaProdukty_Delete]
	@numer_faktury varchar(20),
	@id_produktu integer
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM dbo.mtm_faktura_produkty WHERE @id_produktu = id_produktu AND @numer_faktury = numer_faktury;
END
GO
