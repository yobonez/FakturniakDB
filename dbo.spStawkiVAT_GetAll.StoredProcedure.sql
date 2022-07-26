USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spStawkiVAT_GetAll]    Script Date: 26.07.2022 14:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 26.07.2022
-- Description:	Procedura pokazywania wszystkich stawek VAT
-- =============================================

CREATE PROCEDURE [dbo].[spStawkiVAT_GetAll]

AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.stawki_vat
END
GO
