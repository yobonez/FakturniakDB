USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spSposobyPlatnosci_Add]    Script Date: 26.07.2022 14:58:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 06.07.2022
-- Description:	Procedura dodawania sposobu płatności
-- =============================================

CREATE PROCEDURE [dbo].[spSposobyPlatnosci_Add]
@nazwa varchar(50)

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO dbo.sposoby_platnosci(nazwa) VALUES (@nazwa);
END
GO
