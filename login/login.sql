USE [login]
GO
/****** Object:  Table [dbo].[S_Infomation]    Script Date: 2016/7/26 17:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_Infomation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Number] [varchar](50) NULL,
	[Product] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S_User_Info]    Script Date: 2016/7/26 17:31:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_User_Info](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[S_Infomation] ON 

INSERT [dbo].[S_Infomation] ([id], [Name], [Number], [Product]) VALUES (1, N'yjh', N'7777', N'7777')
INSERT [dbo].[S_Infomation] ([id], [Name], [Number], [Product]) VALUES (2, N'www', N'ww', N'44')
INSERT [dbo].[S_Infomation] ([id], [Name], [Number], [Product]) VALUES (3, N'tt', N'tt', N'tt')
INSERT [dbo].[S_Infomation] ([id], [Name], [Number], [Product]) VALUES (4, N'11', N'111', N'111')
INSERT [dbo].[S_Infomation] ([id], [Name], [Number], [Product]) VALUES (5, N'22', N'22', N'22')
INSERT [dbo].[S_Infomation] ([id], [Name], [Number], [Product]) VALUES (6, N'43', N'434', N'34')
INSERT [dbo].[S_Infomation] ([id], [Name], [Number], [Product]) VALUES (7, N'343', N'434', N'343')
INSERT [dbo].[S_Infomation] ([id], [Name], [Number], [Product]) VALUES (8, N'34', N'45', N'55')
INSERT [dbo].[S_Infomation] ([id], [Name], [Number], [Product]) VALUES (9, N'rr', N'rr', N'rtt')
INSERT [dbo].[S_Infomation] ([id], [Name], [Number], [Product]) VALUES (10, N'55', N'55', N'55')
SET IDENTITY_INSERT [dbo].[S_Infomation] OFF
SET IDENTITY_INSERT [dbo].[S_User_Info] ON 

INSERT [dbo].[S_User_Info] ([id], [LoginName], [Password]) VALUES (1, N'ysq', N'123456')
SET IDENTITY_INSERT [dbo].[S_User_Info] OFF
