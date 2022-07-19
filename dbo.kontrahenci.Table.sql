USE [FakturniakDB]
GO
/****** Object:  Table [dbo].[kontrahenci]    Script Date: 19.07.2022 15:30:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kontrahenci](
	[id_kontrahenta] [int] IDENTITY(0,1) NOT NULL,
	[imie] [nvarchar](50) NOT NULL,
	[nazwisko] [nvarchar](50) NOT NULL,
	[nazwa] [nvarchar](50) NULL,
	[nip] [nvarchar](10) NULL,
	[regon] [nvarchar](14) NULL,
	[krs] [nvarchar](10) NULL,
	[pesel] [nvarchar](11) NOT NULL,
	[email] [nvarchar](10) NULL,
	[telefon] [nvarchar](12) NULL,
	[adres] [nvarchar](50) NOT NULL,
	[kod_pocztowy] [nvarchar](6) NOT NULL,
	[miasto] [nvarchar](50) NOT NULL,
	[nr_konta] [nvarchar](32) NULL,
	[swift] [nvarchar](8) NULL,
 CONSTRAINT [PK__kontrahe__39208E0B5FA75696] PRIMARY KEY CLUSTERED 
(
	[id_kontrahenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
