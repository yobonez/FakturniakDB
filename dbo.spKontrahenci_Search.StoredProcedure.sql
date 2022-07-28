USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spKontrahenci_Search]    Script Date: 28.07.2022 18:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 28.07.2022
-- Description:	Procedura szukania kontrahentów
-- =============================================
CREATE PROCEDURE [dbo].[spKontrahenci_Search]
@input nvarchar(300)

AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.kontrahenci WHERE nazwa LIKE '%' + @input + '%' OR 
										imie LIKE '%' + @input + '%' OR 
										nazwisko LIKE '%' + @input + '%' OR
										nip LIKE '%' + @input + '%' OR 
										telefon LIKE '%' + @input + '%' OR
										email LIKE '%' + @input + '%';
END
GO
