USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spKontrahenci_GetById]    Script Date: 27.07.2022 15:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 07.07.2022
-- Description:	Procedura pokazania pojedyńczego kontrahenta
-- =============================================
CREATE PROCEDURE [dbo].[spKontrahenci_GetById] 
	@id_kontrahenta integer
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.kontrahenci WHERE @id_kontrahenta = id_kontrahenta;
END
GO
