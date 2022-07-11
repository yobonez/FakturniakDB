USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spProdukty_Delete]    Script Date: 11.07.2022 10:03:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Ga�uszka
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
