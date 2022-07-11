USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spSposobyPlatnosci_Add]    Script Date: 11.07.2022 14:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Ga�uszka
-- Create date: 06.07.2022
-- Description:	Procedura dodawania sposobu p�atno�ci
-- =============================================

CREATE PROCEDURE [dbo].[spSposobyPlatnosci_Add]
@nazwa varchar(50)

AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO dbo.sposoby_platnosci(nazwa) VALUES (@nazwa);
END
GO
