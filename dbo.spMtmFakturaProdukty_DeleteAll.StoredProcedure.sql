USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spMtmFakturaProdukty_DeleteAll]    Script Date: 27.07.2022 15:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 11.07.2022
-- Description:	Procedura usuwania wszystkich produktów z istniejącej faktury
-- =============================================

CREATE PROCEDURE [dbo].[spMtmFakturaProdukty_DeleteAll]
@numer_faktury varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM dbo.mtm_faktura_produkty WHERE @numer_faktury = numer_faktury;
END
GO
