USE [FakturniakDB]
GO
/****** Object:  View [dbo].[vPrzychodyOgolem]    Script Date: 28.07.2022 18:04:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vPrzychodyOgolem] 
AS
select numer_faktury, SUM(Suma) AS Suma from vMtmFaktury GROUP BY numer_faktury;
GO
