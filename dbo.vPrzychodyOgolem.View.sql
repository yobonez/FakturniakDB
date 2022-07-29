USE [FakturniakDB]
GO
/****** Object:  View [dbo].[vPrzychodyOgolem]    Script Date: 29.07.2022 14:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vPrzychodyOgolem] 
AS
select numer_faktury, SUM(Suma) AS Suma from vMtmFaktury GROUP BY numer_faktury;
GO
