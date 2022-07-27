USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spFaktury_GetAll]    Script Date: 27.07.2022 15:11:34 ******/
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
