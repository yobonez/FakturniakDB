USE [FakturniakDB]
GO
/****** Object:  View [dbo].[vPrzychodyOgolem]    Script Date: 27.07.2022 15:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vPrzychodyOgolem] 
AS
select numer_faktury, SUM(Suma) AS Suma from vMtmFaktury GROUP BY numer_faktury;
GO
