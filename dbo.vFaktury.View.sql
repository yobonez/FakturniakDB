USE [FakturniakDB]
GO
/****** Object:  View [dbo].[vFaktury]    Script Date: 15.07.2022 14:56:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jacek Gałuszka
-- Create date: 11.07.2022
-- Description:	Widok faktur
-- =============================================

CREATE VIEW [dbo].[vFaktury] AS

SELECT f.numer_faktury, typy.opis AS 'Typ faktury', sp.imie AS 'Sprzedawca', sp.nazwisko AS ' ', nab.imie AS 'Nabywca', nab.nazwisko AS '.', s.nazwa AS 'Sposób płatności', f.termin_platnosci 
FROM faktury f, kontrahenci sp, kontrahenci nab, sposoby_platnosci s, typy_faktur typy
WHERE f.id_sprzedawca = sp.id_kontrahenta AND f.id_nabywca = nab.id_kontrahenta AND f.id_sposob_platnosci = s.id_sposob_platnosci AND f.id_typu_faktury = typy.id_typu_faktury
GO
