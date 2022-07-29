USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spPrzychodyOgolem]    Script Date: 29.07.2022 14:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 27.07.2022
-- Description:	Procedura pokazywania przychodów z wszystkich faktur
-- =============================================
CREATE PROCEDURE [dbo].[spPrzychodyOgolem] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * from vPrzychodyOgolem
END
GO
