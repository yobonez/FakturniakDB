USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spSposobyPlatnosci_Delete]    Script Date: 14.07.2022 17:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 06.07.2022
-- Description:	Procedura usuwania sposobu płatności
-- =============================================

CREATE PROCEDURE [dbo].[spSposobyPlatnosci_Delete]
@id_sposob_platnosci integer

AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM dbo.sposoby_platnosci WHERE @id_sposob_platnosci = id_sposob_platnosci;
END
GO
