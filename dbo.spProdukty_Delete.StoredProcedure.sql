USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spProdukty_Delete]    Script Date: 22.07.2022 18:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 06.07.2022
-- Description:	Procedura usuwania produktu
-- =============================================
CREATE PROCEDURE [dbo].[spProdukty_Delete]
@id_produktu integer
AS
BEGIN
	SET NOCOUNT ON;
	DELETE FROM dbo.produkty WHERE @id_produktu = id_produktu;
END
GO
