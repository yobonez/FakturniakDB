USE [FakturniakDB]
GO
/****** Object:  Table [dbo].[stawki_vat]    Script Date: 29.07.2022 14:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stawki_vat](
	[id_stawki] [int] IDENTITY(0,1) NOT NULL,
	[wartosc] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_stawki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
