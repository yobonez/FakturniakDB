USE [FakturniakDB]
GO
/****** Object:  Table [dbo].[typy_faktur]    Script Date: 29.07.2022 14:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[typy_faktur](
	[id_typu_faktury] [int] IDENTITY(0,1) NOT NULL,
	[nazwa] [varchar](30) NOT NULL,
	[opis] [varchar](100) NULL,
 CONSTRAINT [PK_typy_faktur] PRIMARY KEY CLUSTERED 
(
	[id_typu_faktury] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
