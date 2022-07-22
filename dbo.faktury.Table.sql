USE [FakturniakDB]
GO
/****** Object:  Table [dbo].[faktury]    Script Date: 22.07.2022 18:09:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[faktury](
	[numer_faktury] [varchar](20) NOT NULL,
	[data_wystawienia] [date] NOT NULL,
	[data_sprzedazy] [date] NULL,
	[miejsce_wystawienia] [nvarchar](50) NULL,
	[id_sprzedawca] [int] NOT NULL,
	[id_nabywca] [int] NOT NULL,
	[id_sposob_platnosci] [int] NOT NULL,
	[termin_platnosci] [date] NULL,
	[id_typu_faktury] [int] NOT NULL,
	[uwagi] [nvarchar](300) NULL,
	[uwagi_wewnetrzne] [nvarchar](300) NULL,
 CONSTRAINT [PK_FAKTURY] PRIMARY KEY CLUSTERED 
(
	[numer_faktury] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[faktury]  WITH CHECK ADD  CONSTRAINT [FK_Nabywcy_Faktury] FOREIGN KEY([id_nabywca])
REFERENCES [dbo].[kontrahenci] ([id_kontrahenta])
GO
ALTER TABLE [dbo].[faktury] CHECK CONSTRAINT [FK_Nabywcy_Faktury]
GO
ALTER TABLE [dbo].[faktury]  WITH CHECK ADD  CONSTRAINT [FK_SposobyPlatnosci_Faktury] FOREIGN KEY([id_sposob_platnosci])
REFERENCES [dbo].[sposoby_platnosci] ([id_sposob_platnosci])
GO
ALTER TABLE [dbo].[faktury] CHECK CONSTRAINT [FK_SposobyPlatnosci_Faktury]
GO
ALTER TABLE [dbo].[faktury]  WITH CHECK ADD  CONSTRAINT [FK_Sprzedawcy_Faktury] FOREIGN KEY([id_sprzedawca])
REFERENCES [dbo].[kontrahenci] ([id_kontrahenta])
GO
ALTER TABLE [dbo].[faktury] CHECK CONSTRAINT [FK_Sprzedawcy_Faktury]
GO
ALTER TABLE [dbo].[faktury]  WITH CHECK ADD  CONSTRAINT [FK_Typy_faktur_Faktury] FOREIGN KEY([id_typu_faktury])
REFERENCES [dbo].[typy_faktur] ([id_typu_faktury])
GO
ALTER TABLE [dbo].[faktury] CHECK CONSTRAINT [FK_Typy_faktur_Faktury]
GO
