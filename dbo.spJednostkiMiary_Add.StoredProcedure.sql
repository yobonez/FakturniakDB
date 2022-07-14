USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spJednostkiMiary_Add]    Script Date: 14.07.2022 17:47:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 06.07.2022
-- Description:	Procedura dodawania jednostki miary
-- =============================================
CREATE PROCEDURE [dbo].[spJednostkiMiary_Add]
@nazwa varchar(8)
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO dbo.jednostki_miary (nazwa) VALUES (@nazwa);
END
GO
