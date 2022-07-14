USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spFaktury_Delete]    Script Date: 14.07.2022 17:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 11.07.2022
-- Description:	Procedura usuwania faktury
-- =============================================
CREATE PROCEDURE [dbo].[spFaktury_Delete] 
	@numer_faktury varchar(20)
AS
BEGIN
	SET NOCOUNT ON;
	exec spMtmFakturaProdukty_DeleteAll @numer_faktury;
	DELETE FROM dbo.faktury WHERE @numer_faktury = numer_faktury;
END
GO
