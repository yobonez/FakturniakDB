USE [FakturniakDB]
GO
/****** Object:  UserDefinedFunction [dbo].[funNumerFaktury_Gen]    Script Date: 19.07.2022 15:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 08.07.2022
-- Description:	Funkcja służąca do generowania numerów faktur.
-- =============================================
CREATE FUNCTION [dbo].[funNumerFaktury_Gen]
(
	@numer int,
	@id_typu_faktury int
)
RETURNS varchar(20)
AS
BEGIN
	DECLARE @numer_faktury_return varchar(20);
	DECLARE @count_faktury integer;

	DECLARE @prefix_typ_faktury varchar(2);
	SELECT @prefix_typ_faktury = t.nazwa FROM typy_faktur t;

	DECLARE @numer_faktury_prefix varchar(5) = @prefix_typ_faktury + ' 00';
	
	IF @numer IS NULL
		SELECT @count_faktury = COUNT(numer_faktury) + 1 FROM dbo.faktury;
	ELSE
		SET @count_faktury = @numer;
	
	--IF @count_faktury < 1 
	--BEGIN

	IF @count_faktury > 99
	BEGIN
		SET @numer_faktury_prefix = 'FV '
		SET @numer_faktury_return = CONVERT(varchar, @numer_faktury_prefix + CONVERT(varchar, @count_faktury)) + '/' + substring(convert(varchar, GETDATE(), 105), 4, 10);
		RETURN @numer_faktury_return;
	END

	IF @count_faktury > 9
	BEGIN
		SET @numer_faktury_prefix = 'FV ' + substring(@numer_faktury_prefix, 4,1)
		SET @numer_faktury_return = CONVERT(varchar, @numer_faktury_prefix + CONVERT(varchar, @count_faktury)) + '/' + substring(convert(varchar, GETDATE(), 105), 4, 10);
		RETURN @numer_faktury_return;
	END

	SET @numer_faktury_return = @numer_faktury_prefix + CONVERT(varchar, @count_faktury) + '/' + substring(convert(varchar, GETDATE(), 105), 4, 10);
	RETURN @numer_faktury_return;

	--END

	--SET @count_faktury = @count_faktury + 1;
	--SET @numer_faktury_return = 'FV ' + CONVERT(varchar, @count_faktury);
	RETURN @numer_faktury_return;

END
GO
