USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spProdukty_GetAll]    Script Date: 26.07.2022 14:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 12.07.2022
-- Description:	Procedura pokazywania wszystkich produktów
-- =============================================
CREATE PROCEDURE [dbo].[spProdukty_GetAll]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.produkty;
END
GO
