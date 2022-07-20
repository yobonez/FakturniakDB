USE [FakturniakDB]
GO
/****** Object:  View [dbo].[vMtmFaktury]    Script Date: 20.07.2022 18:09:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMtmFaktury] AS

SELECT f.numer_faktury, p.nazwa AS 'Produkt', p.cena_netto, st.wartosc AS 'Stawka VAT',p.cena_brutto, mtmp.ilosc AS 'Ilość', jdn.nazwa AS 'Jednostka', p.cena_brutto * mtmp.ilosc AS 'Suma' 
FROM dbo.faktury f, dbo.produkty p, dbo.mtm_faktura_produkty mtmp, dbo.stawki_vat st, jednostki_miary jdn
WHERE f.numer_faktury = mtmp.numer_faktury AND p.id_produktu = mtmp.id_produktu AND p.id_stawki = st.id_stawki AND jdn.id_jednostki = p.id_jednostki
GO
