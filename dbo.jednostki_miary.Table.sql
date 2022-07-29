USE [FakturniakDB]
GO
/****** Object:  Table [dbo].[jednostki_miary]    Script Date: 29.07.2022 14:51:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jednostki_miary](
	[id_jednostki] [int] IDENTITY(0,1) NOT NULL,
	[nazwa] [nvarchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_jednostki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
