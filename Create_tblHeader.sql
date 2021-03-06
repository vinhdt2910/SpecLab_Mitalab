USE [SpecLab]
GO
/****** Object:  Table [dbo].[Header]    Script Date: 6/11/2018 3:04:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Header](
	[Hospital] [nvarchar](255) NULL,
	[Lab] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Chief] [nvarchar](255) NULL,
	[PosSign] [nvarchar](255) NULL,
	[LabID] [char](1) NOT NULL,
	[WebSite] [nvarchar](100) NULL,
	[Chief2] [nvarchar](255) NULL,
	[PosSign2] [nvarchar](255) NULL,
 CONSTRAINT [PK_Tbl_Header] PRIMARY KEY CLUSTERED 
(
	[LabID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Header] ([Hospital], [Lab], [Address], [Phone], [Chief], [PosSign], [LabID], [WebSite], [Chief2], [PosSign2]) VALUES (N'SpecLab', N' Viện nghiên cứu tế bào gốc và công nghệ gen Vinmec', N' 458 Minh Khai, Phường Vĩnh Tuy, Quận Hai Bà Trưng, Hà Nội', N'', NULL, NULL, N'A', NULL, NULL, NULL)

Go
--
--Add field
Alter table [dbo].[TubeSample] add  TubeType int not NULL
go
Update [dbo].[TubeSample] set TubeType='1' where Status='1' 
Update [dbo].[TubeSample] set TubeType='0' where Status<>'1' 
Update [dbo].[TubeSample] set Status='7' where Status='1'
Update [dbo].[TubeSample] set Status='1' where Status='2'
Update [dbo].[TubeSample] set Status='2' where Status='3'
Update [dbo].[TubeSample] set Status='0' where Status='7'

Alter table [dbo].ExportDetail add  TubeType int  NULL
go
Update [dbo].ExportDetail set TubeType='0' where Status='0' 

Alter table [dbo].ImportDetail add  TubeType int  NULL
go
Update [dbo].ImportDetail set TubeType='0' where Status='0' 

Alter table [dbo].RemovalDetail add  TubeType int  NULL
go
Update [dbo].RemovalDetail set TubeType='0' where Status='0' 

Alter table [dbo].SampleHistory add  TubeType int  NULL
go
Update [dbo].SampleHistory set TubeType='0' where Status='0' 
Update [dbo].SampleHistory set TubeType='1' where Status='1'
GO
