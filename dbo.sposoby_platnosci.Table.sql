USE [FakturniakDB]
GO
/****** Object:  Table [dbo].[sposoby_platnosci]    Script Date: 18.07.2022 14:44:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sposoby_platnosci](
	[id_sposob_platnosci] [int] IDENTITY(0,1) NOT NULL,
	[nazwa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__sposoby___31CC7458DCE08CFA] PRIMARY KEY CLUSTERED 
(
	[id_sposob_platnosci] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
