USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spPrzychodyOgolem_Search]    Script Date: 28.07.2022 18:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 28.07.2022
-- Description:	Procedura szukania faktur
-- =============================================
CREATE PROCEDURE [dbo].[spPrzychodyOgolem_Search]
@input nvarchar(300)

AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.vPrzychodyOgolem WHERE numer_faktury LIKE '%' + @input + '%'
END
GO
