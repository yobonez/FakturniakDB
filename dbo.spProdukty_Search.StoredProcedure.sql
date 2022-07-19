USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spProdukty_Search]    Script Date: 19.07.2022 15:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 06.07.2022
-- Description:	Procedura dodawania produktu
-- =============================================
CREATE PROCEDURE [dbo].[spProdukty_Search]
@input nvarchar(300)

AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.produkty WHERE nazwa LIKE '%' + @input + '%';
END
GO
