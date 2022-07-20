USE [FakturniakDB]
GO
/****** Object:  Table [dbo].[produkty]    Script Date: 20.07.2022 18:09:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[produkty](
	[id_produktu] [int] IDENTITY(0,1) NOT NULL,
	[nazwa] [nvarchar](300) NOT NULL,
	[cena_netto] [numeric](9, 2) NOT NULL,
	[id_jednostki] [int] NOT NULL,
	[id_stawki] [int] NOT NULL,
	[cena_brutto] [numeric](9, 2) NOT NULL,
 CONSTRAINT [PK__produkty__84C71C9262C7162A] PRIMARY KEY CLUSTERED 
(
	[id_produktu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[produkty]  WITH CHECK ADD  CONSTRAINT [FK_Jednostki_Produkty] FOREIGN KEY([id_jednostki])
REFERENCES [dbo].[jednostki_miary] ([id_jednostki])
GO
ALTER TABLE [dbo].[produkty] CHECK CONSTRAINT [FK_Jednostki_Produkty]
GO
ALTER TABLE [dbo].[produkty]  WITH CHECK ADD  CONSTRAINT [FK_StawkiVAT_Produkty] FOREIGN KEY([id_stawki])
REFERENCES [dbo].[stawki_vat] ([id_stawki])
GO
ALTER TABLE [dbo].[produkty] CHECK CONSTRAINT [FK_StawkiVAT_Produkty]
GO
