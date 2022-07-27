USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spKontrahenci_Delete]    Script Date: 27.07.2022 15:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spKontrahenci_Delete]
@id_kontrahenta integer
AS
BEGIN
	DELETE FROM dbo.kontrahenci WHERE @id_kontrahenta = dbo.kontrahenci.id_kontrahenta;
END
GO
