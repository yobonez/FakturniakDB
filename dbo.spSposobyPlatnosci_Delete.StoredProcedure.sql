USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spSposobyPlatnosci_Delete]    Script Date: 11.07.2022 14:53:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Ga�uszka
-- Create date: 06.07.2022
-- Description:	Procedura usuwania sposobu p�atno�ci
-- =============================================

CREATE PROCEDURE [dbo].[spSposobyPlatnosci_Delete]
@id_sposob_platnosci integer

AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM dbo.sposoby_platnosci WHERE @id_sposob_platnosci = id_sposob_platnosci;
END
GO
