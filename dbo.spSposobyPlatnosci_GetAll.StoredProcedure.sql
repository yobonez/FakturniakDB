USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spSposobyPlatnosci_GetAll]    Script Date: 29.07.2022 14:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 14.07.2022
-- Description:	Procedura dodawania sposobu płatności
-- =============================================

CREATE PROCEDURE [dbo].[spSposobyPlatnosci_GetAll]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.sposoby_platnosci;
END
GO
