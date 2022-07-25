USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spGetNumerFaktury]    Script Date: 25.07.2022 15:29:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 20.07.2022
-- Description:	Procedura zwracająca nowo-wygenerowany ID faktury (potrzebne mi do aplikacji)
-- =============================================
CREATE PROCEDURE [dbo].[spGetNumerFaktury]
-- Faktura
@numer int NULL,
@id_typu_faktury int
AS
BEGIN
	DECLARE @numer_faktury varchar(20) = dbo.funNumerFaktury_Gen(@numer, @id_typu_faktury);
	SELECT @numer_faktury AS numer_faktury;
END
GO
