USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spKontrahenci_GetAll]    Script Date: 12.07.2022 18:12:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 07.07.2022
-- Description:	Procedura wyświetlania wszystkich kontrahentów
-- =============================================
CREATE PROCEDURE [dbo].[spKontrahenci_GetAll] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM kontrahenci;
END
GO
