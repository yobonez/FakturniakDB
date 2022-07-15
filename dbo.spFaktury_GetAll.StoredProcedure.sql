USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spFaktury_GetAll]    Script Date: 15.07.2022 14:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 11.07.2022
-- Description:	Procedura pokazywania wszystkich faktur
-- =============================================
CREATE PROCEDURE [dbo].[spFaktury_GetAll]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.faktury;
END
GO
