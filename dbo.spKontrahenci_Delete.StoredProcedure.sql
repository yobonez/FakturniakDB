USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spKontrahenci_Delete]    Script Date: 11.07.2022 14:48:54 ******/
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
