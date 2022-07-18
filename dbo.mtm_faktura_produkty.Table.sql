USE [FakturniakDB]
GO
/****** Object:  Table [dbo].[mtm_faktura_produkty]    Script Date: 18.07.2022 14:44:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mtm_faktura_produkty](
	[numer_faktury] [varchar](20) NOT NULL,
	[id_produktu] [int] NOT NULL,
	[ilosc] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[mtm_faktura_produkty]  WITH CHECK ADD  CONSTRAINT [FK_mtm_Produkty_Faktury] FOREIGN KEY([id_produktu])
REFERENCES [dbo].[produkty] ([id_produktu])
GO
ALTER TABLE [dbo].[mtm_faktura_produkty] CHECK CONSTRAINT [FK_mtm_Produkty_Faktury]
GO
ALTER TABLE [dbo].[mtm_faktura_produkty]  WITH CHECK ADD  CONSTRAINT [FK_mtm_Produkty_NRFaktury] FOREIGN KEY([numer_faktury])
REFERENCES [dbo].[faktury] ([numer_faktury])
GO
ALTER TABLE [dbo].[mtm_faktura_produkty] CHECK CONSTRAINT [FK_mtm_Produkty_NRFaktury]
GO
