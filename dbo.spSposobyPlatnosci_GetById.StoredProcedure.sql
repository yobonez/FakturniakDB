USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spSposobyPlatnosci_GetById]    Script Date: 18.07.2022 14:44:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 14.07.2022
-- Description:	Procedura dodawania sposobu płatności
-- =============================================

CREATE PROCEDURE [dbo].[spSposobyPlatnosci_GetById]
@id_sposob_platnosci varchar(50)

AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.sposoby_platnosci WHERE id_sposob_platnosci = @id_sposob_platnosci;
END
GO
