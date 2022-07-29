USE [FakturniakDB]
GO
/****** Object:  StoredProcedure [dbo].[spTypyFaktur_GetById]    Script Date: 29.07.2022 14:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 28.07.2022
-- Description:	Procedura pokazania typu faktury
-- =============================================
CREATE PROCEDURE [dbo].[spTypyFaktur_GetById] 
	@id_typu_faktury integer
AS
BEGIN
	SET NOCOUNT ON;
	SELECT * FROM dbo.typy_faktur WHERE @id_typu_faktury = id_typu_faktury;
END
GO
