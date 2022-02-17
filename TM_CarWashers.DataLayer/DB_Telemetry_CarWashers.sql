USE [DB_Telemetry_CarWashers]
GO
/****** Object:  User [CarWash]    Script Date: 05/04/2013 16:31:34 ******/
CREATE USER [CarWash] FOR LOGIN [CarWash] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tblServicesDICAutoClasses]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblServicesDICAutoClasses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblServicesDICAutoClasses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblServicesDICAutoClasses] ON
INSERT [dbo].[tblServicesDICAutoClasses] ([id], [Name]) VALUES (1, N'1')
INSERT [dbo].[tblServicesDICAutoClasses] ([id], [Name]) VALUES (2, N'2а')
INSERT [dbo].[tblServicesDICAutoClasses] ([id], [Name]) VALUES (3, N'2б')
INSERT [dbo].[tblServicesDICAutoClasses] ([id], [Name]) VALUES (4, N'3')
INSERT [dbo].[tblServicesDICAutoClasses] ([id], [Name]) VALUES (5, N'4')
INSERT [dbo].[tblServicesDICAutoClasses] ([id], [Name]) VALUES (6, N'5')
SET IDENTITY_INSERT [dbo].[tblServicesDICAutoClasses] OFF
/****** Object:  Table [dbo].[tblServiceDICServiceNames]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblServiceDICServiceNames](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
 CONSTRAINT [PK_tblServiceDICServiceNames] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblServiceDICServiceNames] ON
INSERT [dbo].[tblServiceDICServiceNames] ([id], [Name]) VALUES (1, N'Мойка кузова')
INSERT [dbo].[tblServiceDICServiceNames] ([id], [Name]) VALUES (2, N'Мойка ковриков')
INSERT [dbo].[tblServiceDICServiceNames] ([id], [Name]) VALUES (3, N'Мойка стекол изнутри')
INSERT [dbo].[tblServiceDICServiceNames] ([id], [Name]) VALUES (4, N'Уборка салона с пылесосом')
INSERT [dbo].[tblServiceDICServiceNames] ([id], [Name]) VALUES (5, N'Мойка днища')
INSERT [dbo].[tblServiceDICServiceNames] ([id], [Name]) VALUES (6, N'Мойка двигателя')
INSERT [dbo].[tblServiceDICServiceNames] ([id], [Name]) VALUES (7, N'Химчистка салона')
SET IDENTITY_INSERT [dbo].[tblServiceDICServiceNames] OFF
/****** Object:  Table [dbo].[tblStokDICStokItems]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStokDICStokItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Art] [varchar](100) NULL,
	[pcName] [varchar](200) NOT NULL,
	[AtItem] [int] NOT NULL,
 CONSTRAINT [PK_tblStokDICStokItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblStokDICStokItems] ON
INSERT [dbo].[tblStokDICStokItems] ([id], [Name], [Art], [pcName], [AtItem]) VALUES (1, N'Полироль 3М', N'1234432', N'мл', 1000)
INSERT [dbo].[tblStokDICStokItems] ([id], [Name], [Art], [pcName], [AtItem]) VALUES (2, N'Тряпка', N'3332413', N'шт', 1)
INSERT [dbo].[tblStokDICStokItems] ([id], [Name], [Art], [pcName], [AtItem]) VALUES (3, N'Шампунь', N'4564432', N'мл', 2000)
INSERT [dbo].[tblStokDICStokItems] ([id], [Name], [Art], [pcName], [AtItem]) VALUES (4, N'Полироль ххх', N'12333212', N'мл', 1000)
INSERT [dbo].[tblStokDICStokItems] ([id], [Name], [Art], [pcName], [AtItem]) VALUES (5, N'Автошампунь "Ерш"', N'2141211', N'мл', 1000)
INSERT [dbo].[tblStokDICStokItems] ([id], [Name], [Art], [pcName], [AtItem]) VALUES (6, N'Полироль 3М', N'1234433', N'мл', 5000)
SET IDENTITY_INSERT [dbo].[tblStokDICStokItems] OFF
/****** Object:  Table [dbo].[tblOrderDICContragent]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOrderDICContragent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblOrderDICContragent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOrderBOBOtherService]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOrderBOBOtherService](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](2000) NOT NULL,
	[Cost] [int] NULL,
 CONSTRAINT [PK_tblOrderBOBOtherService] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrderBOBOtherService] ON
INSERT [dbo].[tblOrderBOBOtherService] ([id], [Name], [Description], [Cost]) VALUES (1, N'Полировка фар', N'Отполировать фары', 1000)
SET IDENTITY_INSERT [dbo].[tblOrderBOBOtherService] OFF
/****** Object:  Table [dbo].[tblDeviceDICDevice]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDeviceDICDevice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[IDDevice] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblDeviceDICDevice] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblDeviceDICDevice] ON
INSERT [dbo].[tblDeviceDICDevice] ([id], [IDDevice]) VALUES (1, N'000010000000A10A')
SET IDENTITY_INSERT [dbo].[tblDeviceDICDevice] OFF
/****** Object:  Table [dbo].[tblAdressDICAdressType]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdressDICAdressType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UID] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblAdressDICAdressType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblAdressDICAdressType] ON
INSERT [dbo].[tblAdressDICAdressType] ([id], [UID]) VALUES (1, N'1')
INSERT [dbo].[tblAdressDICAdressType] ([id], [UID]) VALUES (2, N'123')
INSERT [dbo].[tblAdressDICAdressType] ([id], [UID]) VALUES (3, N'1234')
INSERT [dbo].[tblAdressDICAdressType] ([id], [UID]) VALUES (4, N'11ce4a0a-9949-4cb9-a8fb-02adf84ed418')
INSERT [dbo].[tblAdressDICAdressType] ([id], [UID]) VALUES (5, N'11ce4a0a-9949-4cb9-a8fb-02adf84ed417')
INSERT [dbo].[tblAdressDICAdressType] ([id], [UID]) VALUES (6, N'11ce4a0a-9949-4cb9-a8fb-02adf84ed416')
SET IDENTITY_INSERT [dbo].[tblAdressDICAdressType] OFF
/****** Object:  Table [dbo].[tblWasherDICWasherPosts]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblWasherDICWasherPosts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PostName] [varchar](200) NOT NULL,
 CONSTRAINT [PK_tblWasherDICWasherPosts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblWasherDICWasherPosts] ON
INSERT [dbo].[tblWasherDICWasherPosts] ([id], [PostName]) VALUES (1, N'Пост мойки')
INSERT [dbo].[tblWasherDICWasherPosts] ([id], [PostName]) VALUES (2, N'Пост полировки')
INSERT [dbo].[tblWasherDICWasherPosts] ([id], [PostName]) VALUES (3, N'Химчистка салона')
SET IDENTITY_INSERT [dbo].[tblWasherDICWasherPosts] OFF
/****** Object:  Table [dbo].[tblUsersDICCompany]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsersDICCompany](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[UID] [varchar](200) NULL,
 CONSTRAINT [PK_tblUsersDICCompany] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblUsersDICCompany] ON
INSERT [dbo].[tblUsersDICCompany] ([id], [Name], [UID]) VALUES (1, N'DTC', N'eb324042-0dda-4599-978f-820bf38cfa70')
INSERT [dbo].[tblUsersDICCompany] ([id], [Name], [UID]) VALUES (2, N'Not set', NULL)
INSERT [dbo].[tblUsersDICCompany] ([id], [Name], [UID]) VALUES (3, N'Intop', NULL)
SET IDENTITY_INSERT [dbo].[tblUsersDICCompany] OFF
/****** Object:  Table [dbo].[tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblWashersBOBWasher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[id_Adress] [int] NOT NULL,
	[id_Company] [int] NOT NULL,
	[id_Device] [int] NULL,
	[CurrentCashSum] [money] NULL,
	[PairIsOpened] [bit] NULL,
 CONSTRAINT [PK_tblWashersBOBWasher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblWashersBOBWasher] ON
INSERT [dbo].[tblWashersBOBWasher] ([id], [Name], [id_Adress], [id_Company], [id_Device], [CurrentCashSum], [PairIsOpened]) VALUES (1, N'Автомойка 1', 4, 1, NULL, 3310.0000, 1)
INSERT [dbo].[tblWashersBOBWasher] ([id], [Name], [id_Adress], [id_Company], [id_Device], [CurrentCashSum], [PairIsOpened]) VALUES (2, N'Автомойка 2', 5, 1, NULL, 4174.5000, 1)
INSERT [dbo].[tblWashersBOBWasher] ([id], [Name], [id_Adress], [id_Company], [id_Device], [CurrentCashSum], [PairIsOpened]) VALUES (4, N'Автомойка 3', 6, 1, NULL, 0.0000, NULL)
INSERT [dbo].[tblWashersBOBWasher] ([id], [Name], [id_Adress], [id_Company], [id_Device], [CurrentCashSum], [PairIsOpened]) VALUES (5, N'Podolsk', 3, 3, 1, 0.0000, NULL)
SET IDENTITY_INSERT [dbo].[tblWashersBOBWasher] OFF
/****** Object:  Table [dbo].[tblPersonDICClientSales]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPersonDICClientSales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[id_Company] [int] NOT NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_tblPersonDICClientSales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblPersonDICClientSales] ON
INSERT [dbo].[tblPersonDICClientSales] ([id], [Name], [id_Company], [Value]) VALUES (1, N'test', 1, 5)
SET IDENTITY_INSERT [dbo].[tblPersonDICClientSales] OFF
/****** Object:  Table [dbo].[tblStockBOBOneWashDel]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStockBOBOneWashDel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_CarClass] [int] NOT NULL,
	[id_Company] [int] NOT NULL,
	[id_StokItem] [int] NOT NULL,
	[ColPerWash] [real] NOT NULL,
 CONSTRAINT [PK_tblStockBOBOneWashDel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblStockBOBOneWashDel] ON
INSERT [dbo].[tblStockBOBOneWashDel] ([id], [id_CarClass], [id_Company], [id_StokItem], [ColPerWash]) VALUES (1, 1, 1, 1, 50)
INSERT [dbo].[tblStockBOBOneWashDel] ([id], [id_CarClass], [id_Company], [id_StokItem], [ColPerWash]) VALUES (2, 2, 1, 1, 50)
INSERT [dbo].[tblStockBOBOneWashDel] ([id], [id_CarClass], [id_Company], [id_StokItem], [ColPerWash]) VALUES (3, 3, 1, 1, 50)
INSERT [dbo].[tblStockBOBOneWashDel] ([id], [id_CarClass], [id_Company], [id_StokItem], [ColPerWash]) VALUES (4, 4, 1, 1, 50)
INSERT [dbo].[tblStockBOBOneWashDel] ([id], [id_CarClass], [id_Company], [id_StokItem], [ColPerWash]) VALUES (5, 1, 3, 3, 100)
SET IDENTITY_INSERT [dbo].[tblStockBOBOneWashDel] OFF
/****** Object:  Table [dbo].[tblServiceDICProgramms]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblServiceDICProgramms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Cost] [money] NOT NULL,
	[isLocked] [bit] NOT NULL,
	[id_Company] [int] NOT NULL,
 CONSTRAINT [PK_tblServiceDICProgramms] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblServiceBOBServiceLong]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblServiceBOBServiceLong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Service] [int] NOT NULL,
	[id_Class] [int] NOT NULL,
	[Long] [int] NOT NULL,
 CONSTRAINT [PK_tblServiceBOBServiceLong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblServiceBOBServiceLong] ON
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (1, 1, 1, 15)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (2, 1, 2, 15)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (3, 1, 3, 15)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (4, 1, 4, 15)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (5, 1, 5, 17)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (6, 1, 6, 17)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (7, 2, 1, 5)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (8, 2, 2, 5)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (9, 2, 3, 5)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (10, 2, 4, 5)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (11, 2, 5, 5)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (12, 2, 6, 5)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (13, 3, 1, 20)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (14, 3, 2, 20)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (15, 3, 3, 20)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (16, 3, 4, 25)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (17, 3, 5, 25)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (18, 3, 6, 25)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (19, 4, 1, 5)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (20, 4, 2, 5)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (21, 4, 3, 5)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (22, 4, 4, 10)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (23, 4, 5, 10)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (24, 4, 6, 10)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (25, 5, 1, 7)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (26, 5, 2, 7)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (27, 5, 3, 7)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (28, 5, 4, 8)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (29, 5, 5, 8)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (30, 5, 6, 10)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (31, 6, 1, 7)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (32, 6, 2, 7)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (33, 6, 3, 7)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (34, 6, 4, 7)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (35, 6, 5, 7)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (36, 6, 6, 7)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (37, 7, 1, 120)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (38, 7, 2, 120)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (39, 7, 3, 120)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (40, 7, 4, 150)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (41, 7, 5, 150)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (42, 7, 6, 180)
INSERT [dbo].[tblServiceBOBServiceLong] ([id], [id_Service], [id_Class], [Long]) VALUES (43, 1, 1, 15)
SET IDENTITY_INSERT [dbo].[tblServiceBOBServiceLong] OFF
/****** Object:  Table [dbo].[tblServiceBOBServiceCosts]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblServiceBOBServiceCosts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_CarWash] [int] NOT NULL,
	[id_Service] [int] NOT NULL,
	[Cost] [money] NOT NULL,
	[id_CarCategory] [int] NOT NULL,
 CONSTRAINT [PK_tblServiceBOBServiceCosts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblServiceBOBServiceCosts] ON
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (1, 1, 1, 100.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (2, 1, 1, 110.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (3, 1, 1, 120.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (4, 1, 1, 130.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (5, 1, 1, 140.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (6, 1, 1, 150.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (7, 2, 1, 100.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (8, 2, 1, 100.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (9, 2, 1, 100.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (10, 2, 1, 110.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (11, 2, 1, 110.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (12, 2, 1, 120.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (16, 4, 1, 80.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (17, 4, 1, 90.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (18, 4, 1, 100.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (19, 4, 1, 110.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (20, 4, 1, 120.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (21, 4, 1, 130.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (22, 1, 2, 120.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (23, 1, 2, 130.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (24, 1, 2, 140.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (25, 1, 2, 150.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (26, 4, 7, 0.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (27, 4, 6, 0.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (28, 1, 4, 210.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (29, 1, 4, 220.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (30, 1, 4, 230.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (31, 1, 4, 240.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (32, 1, 4, 250.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (33, 1, 4, 260.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (34, 5, 1, 200.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (35, 5, 1, 200.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (36, 5, 1, 210.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (37, 5, 1, 220.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (38, 5, 1, 230.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (39, 5, 1, 240.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (40, 5, 2, 50.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (41, 5, 2, 60.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (42, 5, 2, 70.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (43, 5, 2, 80.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (44, 5, 2, 90.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (45, 5, 2, 100.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (46, 5, 3, 250.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (47, 5, 3, 250.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (48, 5, 3, 300.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (49, 5, 3, 300.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (50, 5, 3, 320.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (51, 5, 3, 350.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (52, 5, 4, 100.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (53, 5, 4, 100.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (54, 5, 4, 120.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (55, 5, 4, 120.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (56, 5, 4, 140.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (57, 5, 4, 140.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (58, 5, 5, 200.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (59, 5, 5, 220.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (60, 5, 5, 240.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (61, 5, 5, 260.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (62, 5, 5, 280.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (63, 5, 5, 140.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (64, 5, 6, 140.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (65, 5, 6, 150.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (66, 1, 2, 150.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (67, 1, 2, 150.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (68, 2, 2, 60.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (69, 2, 2, 60.0000, 1)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (70, 2, 2, 60.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (71, 2, 2, 60.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (72, 2, 2, 60.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (73, 2, 2, 60.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (74, 2, 3, 250.0000, 6)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (75, 2, 3, 200.0000, 5)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (76, 2, 3, 180.0000, 4)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (77, 2, 3, 150.0000, 3)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (78, 2, 3, 100.0000, 2)
INSERT [dbo].[tblServiceBOBServiceCosts] ([id], [id_CarWash], [id_Service], [Cost], [id_CarCategory]) VALUES (79, 2, 3, 100.0000, 1)
SET IDENTITY_INSERT [dbo].[tblServiceBOBServiceCosts] OFF
/****** Object:  Table [dbo].[tblStokBOBStok]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStokBOBStok](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_StokItem] [int] NOT NULL,
	[Col] [int] NOT NULL,
	[id_CarWash] [int] NOT NULL,
	[AbsoluteCol] [int] NOT NULL,
 CONSTRAINT [PK_tblStokBOBStok] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblStokBOBStok] ON
INSERT [dbo].[tblStokBOBStok] ([id], [id_StokItem], [Col], [id_CarWash], [AbsoluteCol]) VALUES (1, 3, 2, 1, 4000)
INSERT [dbo].[tblStokBOBStok] ([id], [id_StokItem], [Col], [id_CarWash], [AbsoluteCol]) VALUES (2, 4, 3, 2, 3000)
INSERT [dbo].[tblStokBOBStok] ([id], [id_StokItem], [Col], [id_CarWash], [AbsoluteCol]) VALUES (3, 1, 2000, 1, 2000000)
SET IDENTITY_INSERT [dbo].[tblStokBOBStok] OFF
/****** Object:  Table [dbo].[btlWasherBOBPostConfig]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[btlWasherBOBPostConfig](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Washer] [int] NOT NULL,
	[id_Post] [int] NOT NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[isBusyNow] [bit] NOT NULL,
	[LeftOffset] [int] NULL,
	[TopOffset] [int] NULL,
	[ViewType] [int] NULL,
	[CurrentPosition] [int] NULL,
	[SensorPosition] [int] NULL,
 CONSTRAINT [PK_btlWasherBOBPostConfig] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[btlWasherBOBPostConfig] ON
INSERT [dbo].[btlWasherBOBPostConfig] ([id], [id_Washer], [id_Post], [Width], [Height], [isBusyNow], [LeftOffset], [TopOffset], [ViewType], [CurrentPosition], [SensorPosition]) VALUES (1, 1, 1, 4, 5, 1, 0, 0, 1, NULL, NULL)
INSERT [dbo].[btlWasherBOBPostConfig] ([id], [id_Washer], [id_Post], [Width], [Height], [isBusyNow], [LeftOffset], [TopOffset], [ViewType], [CurrentPosition], [SensorPosition]) VALUES (2, 2, 1, 4, 5, 0, 0, 0, 1, NULL, NULL)
INSERT [dbo].[btlWasherBOBPostConfig] ([id], [id_Washer], [id_Post], [Width], [Height], [isBusyNow], [LeftOffset], [TopOffset], [ViewType], [CurrentPosition], [SensorPosition]) VALUES (3, 1, 1, 4, 5, 0, 0, 5, 1, NULL, NULL)
INSERT [dbo].[btlWasherBOBPostConfig] ([id], [id_Washer], [id_Post], [Width], [Height], [isBusyNow], [LeftOffset], [TopOffset], [ViewType], [CurrentPosition], [SensorPosition]) VALUES (4, 2, 1, 4, 5, 0, 0, 5, 1, NULL, NULL)
INSERT [dbo].[btlWasherBOBPostConfig] ([id], [id_Washer], [id_Post], [Width], [Height], [isBusyNow], [LeftOffset], [TopOffset], [ViewType], [CurrentPosition], [SensorPosition]) VALUES (5, 1, 2, 4, 5, 0, 4, 5, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[btlWasherBOBPostConfig] OFF
/****** Object:  Table [dbo].[btlPersonBOBPerson]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[btlPersonBOBPerson](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](200) NOT NULL,
	[SecondName] [varchar](200) NOT NULL,
	[FamilyName] [varchar](200) NOT NULL,
	[Phone] [varchar](200) NOT NULL,
	[id_Company] [int] NOT NULL,
	[id_CarWash] [int] NOT NULL,
 CONSTRAINT [PK_btlPersonBOBPerson] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[btlPersonBOBPerson] ON
INSERT [dbo].[btlPersonBOBPerson] ([id], [FirstName], [SecondName], [FamilyName], [Phone], [id_Company], [id_CarWash]) VALUES (3, N'Иван', N'Иванович', N'Иванов', N'903-555-14-32', 3, 1)
INSERT [dbo].[btlPersonBOBPerson] ([id], [FirstName], [SecondName], [FamilyName], [Phone], [id_Company], [id_CarWash]) VALUES (4, N'Виталий', N'Викторович', N'Котов', N'925-645-13-12', 3, 2)
INSERT [dbo].[btlPersonBOBPerson] ([id], [FirstName], [SecondName], [FamilyName], [Phone], [id_Company], [id_CarWash]) VALUES (5, N'Семен', N'Семеныч', N'Воронов', N'332-55-34', 3, 5)
INSERT [dbo].[btlPersonBOBPerson] ([id], [FirstName], [SecondName], [FamilyName], [Phone], [id_Company], [id_CarWash]) VALUES (6, N'Иван', N'Иванович', N'Иванов', N'777-12-22', 1, 1)
INSERT [dbo].[btlPersonBOBPerson] ([id], [FirstName], [SecondName], [FamilyName], [Phone], [id_Company], [id_CarWash]) VALUES (7, N'Петр', N'Петрович', N'Петров', N'444-78-84', 1, 1)
INSERT [dbo].[btlPersonBOBPerson] ([id], [FirstName], [SecondName], [FamilyName], [Phone], [id_Company], [id_CarWash]) VALUES (8, N'Виктор', N'Семеныч', N'Круглов', N'8-925-444-23-12', 1, 2)
SET IDENTITY_INSERT [dbo].[btlPersonBOBPerson] OFF
/****** Object:  Table [dbo].[tblPersonBOBClients]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPersonBOBClients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CarNomber] [varchar](100) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Comment] [varchar](500) NOT NULL,
	[id_Company] [int] NOT NULL,
	[id_ClientSale] [int] NULL,
 CONSTRAINT [PK_tblPersonBOBClients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblPersonBOBClients] ON
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (1, N'x197yy', N'Виталий', N'нет', N' ', 1, 1)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (2, N'н213кк', N'Кирилл', N'8-909-334-12-32', N' ', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (3, N'A332MM', N'Сергеев', N'8-915-555-32-14', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (4, N'P999PP', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (5, N'K985MC', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (6, N'T221CX', N'Федотов', N'444-54-12', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (7, N'M095KX', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (8, N'H332EC', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (9, N'E111EE', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (10, N'test', N'Test Test', N'123123123', N'test', 3, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (11, N'Х199РЕ', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (12, N'М342ВС', N'Старшинов', N'433-54-33', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (13, N'О322ОС', N'троль', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (14, N'О332ОС', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (15, N'А211ВС', N'Бабушкин', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (16, N'c123cc', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (17, N'c111cc', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (18, N'А111АА', N'', N'', N'', 1, 1)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (19, N'Е111ЕЕ', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (20, N'С111СС', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (21, N'А121СА', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (22, N'М221СС', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (23, N'У221СА', N'', N'', N'', 1, NULL)
INSERT [dbo].[tblPersonBOBClients] ([id], [CarNomber], [Name], [Phone], [Comment], [id_Company], [id_ClientSale]) VALUES (24, N'В222КУ', N'Васюков', N'22213111', N'', 1, NULL)
SET IDENTITY_INSERT [dbo].[tblPersonBOBClients] OFF
/****** Object:  Table [dbo].[tblUsersBOBUsers]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsersBOBUsers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UID] [varchar](200) NOT NULL,
	[UserTempPassword] [varchar](200) NOT NULL,
	[id_Company] [int] NOT NULL,
	[id_CarWash] [int] NULL,
 CONSTRAINT [PK_tblUsersBOBUsers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblUsersBOBUsers] ON
INSERT [dbo].[tblUsersBOBUsers] ([id], [UID], [UserTempPassword], [id_Company], [id_CarWash]) VALUES (1, N'5d7e2810-6227-4d6d-b4e0-97fdf96a0a77', N'932116969', 1, 2)
INSERT [dbo].[tblUsersBOBUsers] ([id], [UID], [UserTempPassword], [id_Company], [id_CarWash]) VALUES (4, N'1e8bf8f8-1c50-4ed0-86ff-f79879f2c7ab', N'-432756039', 3, 1)
INSERT [dbo].[tblUsersBOBUsers] ([id], [UID], [UserTempPassword], [id_Company], [id_CarWash]) VALUES (5, N'5d7e2810-6227-4d6d-b4e0-97fdf96a0a88', N'-1', 1, 2)
INSERT [dbo].[tblUsersBOBUsers] ([id], [UID], [UserTempPassword], [id_Company], [id_CarWash]) VALUES (6, N'1db9110a-7f5d-445f-a4fd-31f1c2f67d21', N'530252', 1, 4)
SET IDENTITY_INSERT [dbo].[tblUsersBOBUsers] OFF
/****** Object:  Table [dbo].[tblWasherBOBSchedulePeoples]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWasherBOBSchedulePeoples](
	[date] [datetime] NOT NULL,
	[id_CarWash] [int] NOT NULL,
	[id_Person] [int] NOT NULL,
	[DateStartWork] [datetime] NOT NULL,
	[DateStopWork] [datetime] NOT NULL,
 CONSTRAINT [PK_tblWasherBOBSchedulePeoples] PRIMARY KEY CLUSTERED 
(
	[date] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblWasherBOBSchedulePeoples] ([date], [id_CarWash], [id_Person], [DateStartWork], [DateStopWork]) VALUES (CAST(0x0000A15700B74F56 AS DateTime), 1, 3, CAST(0x0000A15700B74F56 AS DateTime), CAST(0x0000A15700B74F56 AS DateTime))
INSERT [dbo].[tblWasherBOBSchedulePeoples] ([date], [id_CarWash], [id_Person], [DateStartWork], [DateStopWork]) VALUES (CAST(0x0000A15700BAFC26 AS DateTime), 1, 6, CAST(0x0000A15700BAFC26 AS DateTime), CAST(0x0000A15700BAFC26 AS DateTime))
INSERT [dbo].[tblWasherBOBSchedulePeoples] ([date], [id_CarWash], [id_Person], [DateStartWork], [DateStopWork]) VALUES (CAST(0x0000A15700BB0936 AS DateTime), 1, 7, CAST(0x0000A15700BB0936 AS DateTime), CAST(0x0000A15700BB0936 AS DateTime))
INSERT [dbo].[tblWasherBOBSchedulePeoples] ([date], [id_CarWash], [id_Person], [DateStartWork], [DateStopWork]) VALUES (CAST(0x0000A1AF00FAE147 AS DateTime), 2, 8, CAST(0x0000A1AF00FAE147 AS DateTime), CAST(0x0000A1AF00FAE147 AS DateTime))
/****** Object:  Table [dbo].[tblWasherBOBPair]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWasherBOBPair](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_User] [int] NOT NULL,
	[DateOpen] [datetime] NOT NULL,
	[DateClose] [datetime] NULL,
	[MoneyAtStartWork] [money] NULL,
	[MoneyAtStopWork] [money] NULL,
	[id_CarWash] [int] NOT NULL,
 CONSTRAINT [PK_tblWasherBOBPair] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblWasherBOBPair] ON
INSERT [dbo].[tblWasherBOBPair] ([id], [id_User], [DateOpen], [DateClose], [MoneyAtStartWork], [MoneyAtStopWork], [id_CarWash]) VALUES (1, 1, CAST(0x0000A1570074F438 AS DateTime), CAST(0x0000A15C0068CEDD AS DateTime), 1230.0000, 1880.0000, 1)
INSERT [dbo].[tblWasherBOBPair] ([id], [id_User], [DateOpen], [DateClose], [MoneyAtStartWork], [MoneyAtStopWork], [id_CarWash]) VALUES (2, 1, CAST(0x0000A15C0068D7B4 AS DateTime), CAST(0x0000A1B0000D0A7F AS DateTime), 1880.0000, 2100.0000, 1)
INSERT [dbo].[tblWasherBOBPair] ([id], [id_User], [DateOpen], [DateClose], [MoneyAtStartWork], [MoneyAtStopWork], [id_CarWash]) VALUES (3, 5, CAST(0x0000A15C0068D7B4 AS DateTime), CAST(0x0000A1AF00B67C82 AS DateTime), 1900.0000, 200.0000, 2)
INSERT [dbo].[tblWasherBOBPair] ([id], [id_User], [DateOpen], [DateClose], [MoneyAtStartWork], [MoneyAtStopWork], [id_CarWash]) VALUES (4, 5, CAST(0x0000A1B0009CD316 AS DateTime), CAST(0x0000A1B000B2BDAD AS DateTime), 400.0000, 1920.0000, 2)
INSERT [dbo].[tblWasherBOBPair] ([id], [id_User], [DateOpen], [DateClose], [MoneyAtStartWork], [MoneyAtStopWork], [id_CarWash]) VALUES (5, 1, CAST(0x0000A1B000B2A64F AS DateTime), NULL, 2750.0000, NULL, 1)
INSERT [dbo].[tblWasherBOBPair] ([id], [id_User], [DateOpen], [DateClose], [MoneyAtStartWork], [MoneyAtStopWork], [id_CarWash]) VALUES (6, 5, CAST(0x0000A1B000B2C00B AS DateTime), CAST(0x0000A1B400BF0CB6 AS DateTime), 1920.0000, 1920.0000, 2)
INSERT [dbo].[tblWasherBOBPair] ([id], [id_User], [DateOpen], [DateClose], [MoneyAtStartWork], [MoneyAtStopWork], [id_CarWash]) VALUES (7, 1, CAST(0x0000A1B400BF15F4 AS DateTime), CAST(0x0000A1B400C1C7DC AS DateTime), 1920.0000, 3880.0000, 2)
INSERT [dbo].[tblWasherBOBPair] ([id], [id_User], [DateOpen], [DateClose], [MoneyAtStartWork], [MoneyAtStopWork], [id_CarWash]) VALUES (8, 5, CAST(0x0000A1B400C1CB05 AS DateTime), CAST(0x0000A1B400CDACAA AS DateTime), 3880.0000, 4174.5000, 2)
INSERT [dbo].[tblWasherBOBPair] ([id], [id_User], [DateOpen], [DateClose], [MoneyAtStartWork], [MoneyAtStopWork], [id_CarWash]) VALUES (9, 1, CAST(0x0000A1B400CDB02D AS DateTime), NULL, 4174.5000, NULL, 2)
SET IDENTITY_INSERT [dbo].[tblWasherBOBPair] OFF
/****** Object:  Table [dbo].[tblWasherBOBCashToken]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblWasherBOBCashToken](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_CarWash] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[Summ] [int] NOT NULL,
	[Comment] [varchar](1000) NULL,
	[id_User] [int] NOT NULL,
 CONSTRAINT [PK_tblWasherBOBCashToken] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblWasherBOBCashToken] ON
INSERT [dbo].[tblWasherBOBCashToken] ([id], [id_CarWash], [date], [Summ], [Comment], [id_User]) VALUES (1, 1, CAST(0x0000A13B00CA744C AS DateTime), 2500, N'отправка денег в ЦО', 1)
SET IDENTITY_INSERT [dbo].[tblWasherBOBCashToken] OFF
/****** Object:  Table [dbo].[tblWasherBOBCashTake]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblWasherBOBCashTake](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_CarWash] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Summ] [int] NOT NULL,
	[id_WhoTake] [int] NOT NULL,
	[Reason] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_tblWasherBOBCashTake] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOrdersBOBOrders]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOrdersBOBOrders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Client] [int] NOT NULL,
	[id_CarWash] [int] NOT NULL,
	[StopWork] [datetime] NULL,
	[Comment] [varchar](500) NOT NULL,
	[FullCost] [money] NOT NULL,
	[StartWork] [datetime] NOT NULL,
	[isPayed] [bit] NOT NULL,
	[isCarAtBox] [bit] NULL,
	[isCashPayment] [nchar](10) NULL,
	[id_Post] [int] NULL,
	[id_Contragent] [int] NULL,
 CONSTRAINT [PK_tblOrdersBOBOrders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrdersBOBOrders] ON
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (4, 1, 1, CAST(0x0000A0F500C5C100 AS DateTime), N' ', 500.0000, CAST(0x0000A0F500C5C100 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (5, 3, 1, CAST(0x0000A1320121C4F4 AS DateTime), N'', 220.0000, CAST(0x0000A13201214E30 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (6, 4, 1, CAST(0x0000A1320122080D AS DateTime), N'', 240.0000, CAST(0x0000A1320121EAA0 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (7, 5, 1, CAST(0x0000A13201345FC0 AS DateTime), N'', 130.0000, CAST(0x0000A1320125F6C9 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (8, 6, 1, CAST(0x0000A132015F0F6E AS DateTime), N'', 140.0000, CAST(0x0000A132012BA5C2 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (9, 7, 1, CAST(0x0000A132015F1A72 AS DateTime), N'', 220.0000, CAST(0x0000A1320134833F AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (10, 8, 1, CAST(0x0000A1320136F3B0 AS DateTime), N'', 490.0000, CAST(0x0000A132015EF914 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (11, 9, 1, CAST(0x0000A15700755BCE AS DateTime), N'', 100.0000, CAST(0x0000A133010D08D0 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (12, 10, 5, CAST(0x0000A13500C389F9 AS DateTime), N'', 220.0000, CAST(0x0000A13500C389F9 AS DateTime), 0, 1, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (13, 11, 1, CAST(0x0000A13B00840228 AS DateTime), N'', 460.0000, CAST(0x0000A13B00835EC8 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (14, 12, 1, CAST(0x0000A13B00840DD8 AS DateTime), N'', 520.0000, CAST(0x0000A13B00839568 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (15, 13, 2, CAST(0x0000A13B008D4A54 AS DateTime), N'', 100.0000, CAST(0x0000A13B008B2C24 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (16, 14, 2, CAST(0x0000A13B008F18F1 AS DateTime), N'', 100.0000, CAST(0x0000A13B008D7CA8 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (17, 13, 2, CAST(0x0000A13E009297D8 AS DateTime), N'', 100.0000, CAST(0x0000A13B008F0862 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (18, 15, 2, CAST(0x0000A1AF00FA8D34 AS DateTime), N'', 100.0000, CAST(0x0000A13E0092BC0B AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (19, 11, 1, CAST(0x0000A157007972F2 AS DateTime), N'', 220.0000, CAST(0x0000A15700794135 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (20, 16, 1, CAST(0x0000A15C0065F911 AS DateTime), N'', 330.0000, CAST(0x0000A15800BC6217 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (21, 17, 1, CAST(0x0000A15C0068E7E2 AS DateTime), N'', 220.0000, CAST(0x0000A15C0067AA27 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (22, 17, 1, CAST(0x0000A1B0000D22F8 AS DateTime), N'', 220.0000, CAST(0x0000A15C0074AD6C AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (23, 18, 2, CAST(0x0000A1B0000CB127 AS DateTime), N'', 100.0000, CAST(0x0000A1AF00BA8820 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (24, 18, 1, CAST(0x0000A1B000DBE5BB AS DateTime), N'', 430.0000, CAST(0x0000A1AF0164A346 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (25, 17, 1, CAST(0x0000A1B000F49722 AS DateTime), N'', 560.0000, CAST(0x0000A1B0009A1839 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (26, 16, 2, CAST(0x0000A1B000DFD3E1 AS DateTime), N'', 170.0000, CAST(0x0000A1B0009CFBCD AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (27, 19, 2, CAST(0x0000A1B000E2F807 AS DateTime), N'', 350.0000, CAST(0x0000A1B0009DC6DA AS DateTime), 1, 0, N'True      ', 4, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (28, 20, 2, CAST(0x0000A1B000ED3A4C AS DateTime), N'', 310.0000, CAST(0x0000A1B000A02005 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (29, 21, 2, CAST(0x0000A1B000F1DDAC AS DateTime), N'', 260.0000, CAST(0x0000A1B000AB7477 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (30, 22, 2, CAST(0x0000A1B000F1E380 AS DateTime), N'', 430.0000, CAST(0x0000A1B000AB97AE AS DateTime), 1, 0, N'True      ', 4, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (31, 18, 2, CAST(0x0000A1B401014079 AS DateTime), N'', 160.0000, CAST(0x0000A1B400BF34E2 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (32, 23, 2, CAST(0x0000A1B40101BA86 AS DateTime), N'', 1430.0000, CAST(0x0000A1B400BF8378 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (33, 24, 2, CAST(0x0000A1960101CB73 AS DateTime), N'', 370.0000, CAST(0x0000A1B400BFB1BE AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (34, 18, 2, CAST(0x0000A1960103BC78 AS DateTime), N'', 294.5000, CAST(0x0000A19600C10604 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (35, 1, 1, CAST(0x0000A03E00C5C100 AS DateTime), N' ', 500.0000, CAST(0x0000A03E00C5C100 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (36, 3, 1, CAST(0x0000A03E0121C4F4 AS DateTime), N'', 220.0000, CAST(0x0000A03E01214E30 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (37, 4, 1, CAST(0x0000A03E0122080D AS DateTime), N'', 240.0000, CAST(0x0000A03E0121EAA0 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (38, 5, 1, CAST(0x0000A03E01345FC0 AS DateTime), N'', 130.0000, CAST(0x0000A03E0125F6C9 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (39, 6, 1, CAST(0x0000A03E015F0F6E AS DateTime), N'', 140.0000, CAST(0x0000A03E012BA5C2 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (40, 7, 1, CAST(0x0000A03E015F1A72 AS DateTime), N'', 220.0000, CAST(0x0000A03E0134833F AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (41, 8, 1, CAST(0x0000A03E0136F3B0 AS DateTime), N'', 490.0000, CAST(0x0000A03E015EF914 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (42, 9, 1, CAST(0x0000A1B000755BCE AS DateTime), N'', 100.0000, CAST(0x0000A03F010D08D0 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (43, 10, 5, CAST(0x0000A04100C389F9 AS DateTime), N'', 220.0000, CAST(0x0000A04100C389F9 AS DateTime), 0, 1, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (44, 11, 1, CAST(0x0000A19500840228 AS DateTime), N'', 460.0000, CAST(0x0000A19500835EC8 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (45, 12, 1, CAST(0x0000A19500840DD8 AS DateTime), N'', 520.0000, CAST(0x0000A19500839568 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (46, 13, 2, CAST(0x0000A195008D4A54 AS DateTime), N'', 100.0000, CAST(0x0000A195008B2C24 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (47, 14, 2, CAST(0x0000A195008F18F1 AS DateTime), N'', 100.0000, CAST(0x0000A195008D7CA8 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (48, 13, 2, CAST(0x0000A198009297D8 AS DateTime), N'', 100.0000, CAST(0x0000A195008F0862 AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (49, 15, 2, CAST(0x0000A1AF00FA8D34 AS DateTime), N'', 100.0000, CAST(0x0000A1980092BC0B AS DateTime), 1, 0, N'True      ', NULL, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (50, 11, 1, CAST(0x0000A196007972F2 AS DateTime), N'', 220.0000, CAST(0x0000A1B000794135 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (51, 16, 1, CAST(0x0000A1970065F911 AS DateTime), N'', 330.0000, CAST(0x0000A19300BC6217 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (52, 17, 1, CAST(0x0000A1970068E7E2 AS DateTime), N'', 220.0000, CAST(0x0000A1970067AA27 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (53, 17, 1, CAST(0x0000A1A7000D22F8 AS DateTime), N'', 220.0000, CAST(0x0000A1970074AD6C AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (54, 18, 2, CAST(0x0000A1A7000CB127 AS DateTime), N'', 100.0000, CAST(0x0000A1A700BA8820 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (55, 18, 1, CAST(0x0000A1A700DBE5BB AS DateTime), N'', 430.0000, CAST(0x0000A1A70164A346 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (56, 17, 1, CAST(0x0000A1A800F49722 AS DateTime), N'', 560.0000, CAST(0x0000A1A8009A1839 AS DateTime), 1, 0, N'True      ', 1, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (57, 16, 2, CAST(0x0000A1A800DFD3E1 AS DateTime), N'', 170.0000, CAST(0x0000A1A8009CFBCD AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (58, 19, 2, CAST(0x0000A1A900E2F807 AS DateTime), N'', 350.0000, CAST(0x0000A1A9009DC6DA AS DateTime), 1, 0, N'True      ', 4, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (59, 20, 2, CAST(0x0000A1A900ED3A4C AS DateTime), N'', 310.0000, CAST(0x0000A1A900A02005 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (60, 21, 2, CAST(0x0000A1A900F1DDAC AS DateTime), N'', 260.0000, CAST(0x0000A1A900AB7477 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (61, 22, 2, CAST(0x0000A1A900F1E380 AS DateTime), N'', 430.0000, CAST(0x0000A1A900AB97AE AS DateTime), 1, 0, N'True      ', 4, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (62, 18, 2, CAST(0x0000A1B401014079 AS DateTime), N'', 160.0000, CAST(0x0000A1B400BF34E2 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (63, 23, 2, CAST(0x0000A1B40101BA86 AS DateTime), N'', 1430.0000, CAST(0x0000A1B400BF8378 AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (64, 24, 2, CAST(0x0000A1B40101CB73 AS DateTime), N'', 370.0000, CAST(0x0000A1B400BFB1BE AS DateTime), 1, 0, N'True      ', 2, NULL)
INSERT [dbo].[tblOrdersBOBOrders] ([id], [id_Client], [id_CarWash], [StopWork], [Comment], [FullCost], [StartWork], [isPayed], [isCarAtBox], [isCashPayment], [id_Post], [id_Contragent]) VALUES (65, 18, 2, CAST(0x0000A1B40103BC78 AS DateTime), N'', 294.5000, CAST(0x0000A1B400C10604 AS DateTime), 1, 0, N'True      ', 2, NULL)
SET IDENTITY_INSERT [dbo].[tblOrdersBOBOrders] OFF
/****** Object:  Table [dbo].[tblPersonBOBPays]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPersonBOBPays](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Person] [int] NOT NULL,
	[PaySumm] [int] NOT NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_tblPersonBOBPays] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStokBOBStokAudit]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStokBOBStokAudit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[Comment] [varchar](1000) NULL,
	[id_whoMake] [int] NOT NULL,
	[id_CarWash] [int] NOT NULL,
 CONSTRAINT [PK_tblStokBOBStokAudit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblStokBOBStokAuditItems]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStokBOBStokAuditItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Item] [int] NOT NULL,
	[id_Audit] [int] NOT NULL,
	[DBValue] [int] NOT NULL,
	[CurrentValue] [int] NOT NULL,
 CONSTRAINT [PK_tblStokBOBStokAuditItems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrdersM2MOrderWorkers]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrdersM2MOrderWorkers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Order] [int] NOT NULL,
	[id_User] [int] NOT NULL,
 CONSTRAINT [PK_tblOrdersM2MOrderWorkers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblOrdersM2MOrderWorkers] ON
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (1, 5, 3)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (2, 6, 4)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (3, 7, 4)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (4, 8, 4)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (5, 9, 4)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (6, 10, 4)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (7, 11, 3)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (8, 12, 4)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (9, 13, 6)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (10, 14, 7)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (11, 15, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (12, 16, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (13, 17, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (14, 18, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (15, 19, 6)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (16, 19, 7)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (17, 20, 7)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (18, 21, 6)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (19, 22, 6)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (20, 23, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (21, 24, 6)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (22, 25, 6)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (23, 26, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (24, 27, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (25, 28, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (26, 29, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (27, 30, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (28, 31, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (29, 32, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (30, 33, 8)
INSERT [dbo].[tblOrdersM2MOrderWorkers] ([id], [id_Order], [id_User]) VALUES (31, 34, 8)
SET IDENTITY_INSERT [dbo].[tblOrdersM2MOrderWorkers] OFF
/****** Object:  Table [dbo].[tblOrderM2MOrderList]    Script Date: 05/04/2013 16:31:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderM2MOrderList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Order] [int] NOT NULL,
	[id_Service] [int] NULL,
	[id_Programm] [int] NULL,
	[id_OtherService] [int] NULL,
 CONSTRAINT [PK_tblOrderM2MOrderList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblOrderM2MOrderList] ON
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (1, 5, 1, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (2, 5, 22, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (3, 6, 2, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (4, 6, 23, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (5, 7, 4, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (6, 8, 5, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (7, 9, 1, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (8, 9, 22, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (9, 10, 3, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (10, 10, 24, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (11, 10, 30, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (12, 11, 1, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (13, 12, 1, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (14, 12, 22, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (15, 13, 2, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (16, 13, 23, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (17, 13, 29, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (18, 14, 4, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (19, 14, 25, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (20, 14, 31, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (21, 15, 8, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (22, 16, 8, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (23, 17, 8, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (24, 18, 7, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (25, 19, 1, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (26, 19, 22, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (27, 20, 22, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (28, 20, 28, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (29, 21, 1, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (30, 21, 22, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (31, 22, 1, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (32, 22, 22, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (33, 23, 7, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (34, 24, 1, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (35, 24, 22, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (36, 24, 28, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (37, 25, 6, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (38, 25, 33, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (39, 25, 67, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (40, 26, 10, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (41, 26, 71, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (42, 27, 10, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (43, 27, 71, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (44, 27, 76, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (45, 28, 9, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (46, 28, 70, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (47, 28, 77, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (48, 29, 7, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (49, 29, 69, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (50, 29, 79, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (51, 30, 12, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (52, 30, 73, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (53, 30, 74, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (54, 31, 8, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (55, 31, 68, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (56, 32, 12, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (57, 32, 73, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (58, 32, 74, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (59, 32, NULL, NULL, 1)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (60, 33, 11, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (61, 33, 72, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (62, 33, 75, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (63, 34, 9, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (64, 34, 70, NULL, NULL)
INSERT [dbo].[tblOrderM2MOrderList] ([id], [id_Order], [id_Service], [id_Programm], [id_OtherService]) VALUES (65, 34, 77, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblOrderM2MOrderList] OFF
/****** Object:  Default [DF_tblServiceDICProgramms_isLocked]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblServiceDICProgramms] ADD  CONSTRAINT [DF_tblServiceDICProgramms_isLocked]  DEFAULT ((0)) FOR [isLocked]
GO
/****** Object:  Default [DF_btlWasherBOBPostConfig_isBusyNow]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[btlWasherBOBPostConfig] ADD  CONSTRAINT [DF_btlWasherBOBPostConfig_isBusyNow]  DEFAULT ((0)) FOR [isBusyNow]
GO
/****** Object:  ForeignKey [FK_tblWashersBOBWasher_tblAdressDICAdressType]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWashersBOBWasher]  WITH CHECK ADD  CONSTRAINT [FK_tblWashersBOBWasher_tblAdressDICAdressType] FOREIGN KEY([id_Adress])
REFERENCES [dbo].[tblAdressDICAdressType] ([id])
GO
ALTER TABLE [dbo].[tblWashersBOBWasher] CHECK CONSTRAINT [FK_tblWashersBOBWasher_tblAdressDICAdressType]
GO
/****** Object:  ForeignKey [FK_tblWashersBOBWasher_tblDeviceDICDevice]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWashersBOBWasher]  WITH CHECK ADD  CONSTRAINT [FK_tblWashersBOBWasher_tblDeviceDICDevice] FOREIGN KEY([id_Device])
REFERENCES [dbo].[tblDeviceDICDevice] ([id])
GO
ALTER TABLE [dbo].[tblWashersBOBWasher] CHECK CONSTRAINT [FK_tblWashersBOBWasher_tblDeviceDICDevice]
GO
/****** Object:  ForeignKey [FK_tblWashersBOBWasher_tblUsersDICCompany]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWashersBOBWasher]  WITH CHECK ADD  CONSTRAINT [FK_tblWashersBOBWasher_tblUsersDICCompany] FOREIGN KEY([id_Company])
REFERENCES [dbo].[tblUsersDICCompany] ([id])
GO
ALTER TABLE [dbo].[tblWashersBOBWasher] CHECK CONSTRAINT [FK_tblWashersBOBWasher_tblUsersDICCompany]
GO
/****** Object:  ForeignKey [FK_tblPersonDICClientSales_tblUsersDICCompany]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblPersonDICClientSales]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonDICClientSales_tblUsersDICCompany] FOREIGN KEY([id_Company])
REFERENCES [dbo].[tblUsersDICCompany] ([id])
GO
ALTER TABLE [dbo].[tblPersonDICClientSales] CHECK CONSTRAINT [FK_tblPersonDICClientSales_tblUsersDICCompany]
GO
/****** Object:  ForeignKey [FK_tblStockBOBOneWashDel_tblServicesDICAutoClasses]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblStockBOBOneWashDel]  WITH CHECK ADD  CONSTRAINT [FK_tblStockBOBOneWashDel_tblServicesDICAutoClasses] FOREIGN KEY([id_CarClass])
REFERENCES [dbo].[tblServicesDICAutoClasses] ([id])
GO
ALTER TABLE [dbo].[tblStockBOBOneWashDel] CHECK CONSTRAINT [FK_tblStockBOBOneWashDel_tblServicesDICAutoClasses]
GO
/****** Object:  ForeignKey [FK_tblStockBOBOneWashDel_tblStokDICStokItems]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblStockBOBOneWashDel]  WITH CHECK ADD  CONSTRAINT [FK_tblStockBOBOneWashDel_tblStokDICStokItems] FOREIGN KEY([id_StokItem])
REFERENCES [dbo].[tblStokDICStokItems] ([id])
GO
ALTER TABLE [dbo].[tblStockBOBOneWashDel] CHECK CONSTRAINT [FK_tblStockBOBOneWashDel_tblStokDICStokItems]
GO
/****** Object:  ForeignKey [FK_tblStockBOBOneWashDel_tblUsersDICCompany]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblStockBOBOneWashDel]  WITH CHECK ADD  CONSTRAINT [FK_tblStockBOBOneWashDel_tblUsersDICCompany] FOREIGN KEY([id_Company])
REFERENCES [dbo].[tblUsersDICCompany] ([id])
GO
ALTER TABLE [dbo].[tblStockBOBOneWashDel] CHECK CONSTRAINT [FK_tblStockBOBOneWashDel_tblUsersDICCompany]
GO
/****** Object:  ForeignKey [FK_tblServiceDICProgramms_tblUsersDICCompany]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblServiceDICProgramms]  WITH CHECK ADD  CONSTRAINT [FK_tblServiceDICProgramms_tblUsersDICCompany] FOREIGN KEY([id_Company])
REFERENCES [dbo].[tblUsersDICCompany] ([id])
GO
ALTER TABLE [dbo].[tblServiceDICProgramms] CHECK CONSTRAINT [FK_tblServiceDICProgramms_tblUsersDICCompany]
GO
/****** Object:  ForeignKey [FK_tblServiceBOBServiceLong_tblServiceDICServiceNames]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblServiceBOBServiceLong]  WITH CHECK ADD  CONSTRAINT [FK_tblServiceBOBServiceLong_tblServiceDICServiceNames] FOREIGN KEY([id_Service])
REFERENCES [dbo].[tblServiceDICServiceNames] ([id])
GO
ALTER TABLE [dbo].[tblServiceBOBServiceLong] CHECK CONSTRAINT [FK_tblServiceBOBServiceLong_tblServiceDICServiceNames]
GO
/****** Object:  ForeignKey [FK_tblServiceBOBServiceLong_tblServicesDICAutoClasses]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblServiceBOBServiceLong]  WITH CHECK ADD  CONSTRAINT [FK_tblServiceBOBServiceLong_tblServicesDICAutoClasses] FOREIGN KEY([id_Class])
REFERENCES [dbo].[tblServicesDICAutoClasses] ([id])
GO
ALTER TABLE [dbo].[tblServiceBOBServiceLong] CHECK CONSTRAINT [FK_tblServiceBOBServiceLong_tblServicesDICAutoClasses]
GO
/****** Object:  ForeignKey [FK_tblServiceBOBServiceCosts_tblServiceDICServiceNames]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblServiceBOBServiceCosts]  WITH CHECK ADD  CONSTRAINT [FK_tblServiceBOBServiceCosts_tblServiceDICServiceNames] FOREIGN KEY([id_Service])
REFERENCES [dbo].[tblServiceDICServiceNames] ([id])
GO
ALTER TABLE [dbo].[tblServiceBOBServiceCosts] CHECK CONSTRAINT [FK_tblServiceBOBServiceCosts_tblServiceDICServiceNames]
GO
/****** Object:  ForeignKey [FK_tblServiceBOBServiceCosts_tblServicesDICAutoClasses]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblServiceBOBServiceCosts]  WITH CHECK ADD  CONSTRAINT [FK_tblServiceBOBServiceCosts_tblServicesDICAutoClasses] FOREIGN KEY([id_CarCategory])
REFERENCES [dbo].[tblServicesDICAutoClasses] ([id])
GO
ALTER TABLE [dbo].[tblServiceBOBServiceCosts] CHECK CONSTRAINT [FK_tblServiceBOBServiceCosts_tblServicesDICAutoClasses]
GO
/****** Object:  ForeignKey [FK_tblServiceBOBServiceCosts_tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblServiceBOBServiceCosts]  WITH CHECK ADD  CONSTRAINT [FK_tblServiceBOBServiceCosts_tblWashersBOBWasher] FOREIGN KEY([id_CarWash])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[tblServiceBOBServiceCosts] CHECK CONSTRAINT [FK_tblServiceBOBServiceCosts_tblWashersBOBWasher]
GO
/****** Object:  ForeignKey [FK_tblStokBOBStok_tblStokDICStokItems]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblStokBOBStok]  WITH CHECK ADD  CONSTRAINT [FK_tblStokBOBStok_tblStokDICStokItems] FOREIGN KEY([id_StokItem])
REFERENCES [dbo].[tblStokDICStokItems] ([id])
GO
ALTER TABLE [dbo].[tblStokBOBStok] CHECK CONSTRAINT [FK_tblStokBOBStok_tblStokDICStokItems]
GO
/****** Object:  ForeignKey [FK_tblStokBOBStok_tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblStokBOBStok]  WITH CHECK ADD  CONSTRAINT [FK_tblStokBOBStok_tblWashersBOBWasher] FOREIGN KEY([id_CarWash])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[tblStokBOBStok] CHECK CONSTRAINT [FK_tblStokBOBStok_tblWashersBOBWasher]
GO
/****** Object:  ForeignKey [FK_btlWasherBOBPostConfig_tblWasherDICWasherPosts]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[btlWasherBOBPostConfig]  WITH CHECK ADD  CONSTRAINT [FK_btlWasherBOBPostConfig_tblWasherDICWasherPosts] FOREIGN KEY([id_Post])
REFERENCES [dbo].[tblWasherDICWasherPosts] ([id])
GO
ALTER TABLE [dbo].[btlWasherBOBPostConfig] CHECK CONSTRAINT [FK_btlWasherBOBPostConfig_tblWasherDICWasherPosts]
GO
/****** Object:  ForeignKey [FK_btlWasherBOBPostConfig_tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[btlWasherBOBPostConfig]  WITH CHECK ADD  CONSTRAINT [FK_btlWasherBOBPostConfig_tblWashersBOBWasher] FOREIGN KEY([id_Washer])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[btlWasherBOBPostConfig] CHECK CONSTRAINT [FK_btlWasherBOBPostConfig_tblWashersBOBWasher]
GO
/****** Object:  ForeignKey [FK_btlPersonBOBPerson_tblUsersDICCompany]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[btlPersonBOBPerson]  WITH CHECK ADD  CONSTRAINT [FK_btlPersonBOBPerson_tblUsersDICCompany] FOREIGN KEY([id_Company])
REFERENCES [dbo].[tblUsersDICCompany] ([id])
GO
ALTER TABLE [dbo].[btlPersonBOBPerson] CHECK CONSTRAINT [FK_btlPersonBOBPerson_tblUsersDICCompany]
GO
/****** Object:  ForeignKey [FK_btlPersonBOBPerson_tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[btlPersonBOBPerson]  WITH CHECK ADD  CONSTRAINT [FK_btlPersonBOBPerson_tblWashersBOBWasher] FOREIGN KEY([id_CarWash])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[btlPersonBOBPerson] CHECK CONSTRAINT [FK_btlPersonBOBPerson_tblWashersBOBWasher]
GO
/****** Object:  ForeignKey [FK_tblPersonBOBClients_tblPersonDICClientSales]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblPersonBOBClients]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonBOBClients_tblPersonDICClientSales] FOREIGN KEY([id_ClientSale])
REFERENCES [dbo].[tblPersonDICClientSales] ([id])
GO
ALTER TABLE [dbo].[tblPersonBOBClients] CHECK CONSTRAINT [FK_tblPersonBOBClients_tblPersonDICClientSales]
GO
/****** Object:  ForeignKey [FK_tblPersonBOBClients_tblUsersDICCompany]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblPersonBOBClients]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonBOBClients_tblUsersDICCompany] FOREIGN KEY([id_Company])
REFERENCES [dbo].[tblUsersDICCompany] ([id])
GO
ALTER TABLE [dbo].[tblPersonBOBClients] CHECK CONSTRAINT [FK_tblPersonBOBClients_tblUsersDICCompany]
GO
/****** Object:  ForeignKey [FK_tblUsersBOBUsers_tblUsersDICCompany]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblUsersBOBUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblUsersBOBUsers_tblUsersDICCompany] FOREIGN KEY([id_Company])
REFERENCES [dbo].[tblUsersDICCompany] ([id])
GO
ALTER TABLE [dbo].[tblUsersBOBUsers] CHECK CONSTRAINT [FK_tblUsersBOBUsers_tblUsersDICCompany]
GO
/****** Object:  ForeignKey [FK_tblUsersBOBUsers_tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblUsersBOBUsers]  WITH CHECK ADD  CONSTRAINT [FK_tblUsersBOBUsers_tblWashersBOBWasher] FOREIGN KEY([id_CarWash])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[tblUsersBOBUsers] CHECK CONSTRAINT [FK_tblUsersBOBUsers_tblWashersBOBWasher]
GO
/****** Object:  ForeignKey [FK_tblWasherBOBSchedulePeoples_btlPersonBOBPerson]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWasherBOBSchedulePeoples]  WITH CHECK ADD  CONSTRAINT [FK_tblWasherBOBSchedulePeoples_btlPersonBOBPerson] FOREIGN KEY([id_Person])
REFERENCES [dbo].[btlPersonBOBPerson] ([id])
GO
ALTER TABLE [dbo].[tblWasherBOBSchedulePeoples] CHECK CONSTRAINT [FK_tblWasherBOBSchedulePeoples_btlPersonBOBPerson]
GO
/****** Object:  ForeignKey [FK_tblWasherBOBSchedulePeoples_tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWasherBOBSchedulePeoples]  WITH CHECK ADD  CONSTRAINT [FK_tblWasherBOBSchedulePeoples_tblWashersBOBWasher] FOREIGN KEY([id_CarWash])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[tblWasherBOBSchedulePeoples] CHECK CONSTRAINT [FK_tblWasherBOBSchedulePeoples_tblWashersBOBWasher]
GO
/****** Object:  ForeignKey [FK_tblWasherBOBPair_tblUsersBOBUsers]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWasherBOBPair]  WITH CHECK ADD  CONSTRAINT [FK_tblWasherBOBPair_tblUsersBOBUsers] FOREIGN KEY([id_User])
REFERENCES [dbo].[tblUsersBOBUsers] ([id])
GO
ALTER TABLE [dbo].[tblWasherBOBPair] CHECK CONSTRAINT [FK_tblWasherBOBPair_tblUsersBOBUsers]
GO
/****** Object:  ForeignKey [FK_tblWasherBOBPair_tblWasherBOBPair]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWasherBOBPair]  WITH CHECK ADD  CONSTRAINT [FK_tblWasherBOBPair_tblWasherBOBPair] FOREIGN KEY([id_CarWash])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[tblWasherBOBPair] CHECK CONSTRAINT [FK_tblWasherBOBPair_tblWasherBOBPair]
GO
/****** Object:  ForeignKey [FK_tblWasherBOBCashToken_tblUsersBOBUsers]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWasherBOBCashToken]  WITH CHECK ADD  CONSTRAINT [FK_tblWasherBOBCashToken_tblUsersBOBUsers] FOREIGN KEY([id_User])
REFERENCES [dbo].[tblUsersBOBUsers] ([id])
GO
ALTER TABLE [dbo].[tblWasherBOBCashToken] CHECK CONSTRAINT [FK_tblWasherBOBCashToken_tblUsersBOBUsers]
GO
/****** Object:  ForeignKey [FK_tblWasherBOBCashToken_tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWasherBOBCashToken]  WITH CHECK ADD  CONSTRAINT [FK_tblWasherBOBCashToken_tblWashersBOBWasher] FOREIGN KEY([id_CarWash])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[tblWasherBOBCashToken] CHECK CONSTRAINT [FK_tblWasherBOBCashToken_tblWashersBOBWasher]
GO
/****** Object:  ForeignKey [FK_tblWasherBOBCashTake_tblUsersBOBUsers]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWasherBOBCashTake]  WITH CHECK ADD  CONSTRAINT [FK_tblWasherBOBCashTake_tblUsersBOBUsers] FOREIGN KEY([id_WhoTake])
REFERENCES [dbo].[tblUsersBOBUsers] ([id])
GO
ALTER TABLE [dbo].[tblWasherBOBCashTake] CHECK CONSTRAINT [FK_tblWasherBOBCashTake_tblUsersBOBUsers]
GO
/****** Object:  ForeignKey [FK_tblWasherBOBCashTake_tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblWasherBOBCashTake]  WITH CHECK ADD  CONSTRAINT [FK_tblWasherBOBCashTake_tblWashersBOBWasher] FOREIGN KEY([id_CarWash])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[tblWasherBOBCashTake] CHECK CONSTRAINT [FK_tblWasherBOBCashTake_tblWashersBOBWasher]
GO
/****** Object:  ForeignKey [FK_tblOrdersBOBOrders_btlWasherBOBPostConfig]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblOrdersBOBOrders]  WITH CHECK ADD  CONSTRAINT [FK_tblOrdersBOBOrders_btlWasherBOBPostConfig] FOREIGN KEY([id_Post])
REFERENCES [dbo].[btlWasherBOBPostConfig] ([id])
GO
ALTER TABLE [dbo].[tblOrdersBOBOrders] CHECK CONSTRAINT [FK_tblOrdersBOBOrders_btlWasherBOBPostConfig]
GO
/****** Object:  ForeignKey [FK_tblOrdersBOBOrders_tblOrderDICContragent]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblOrdersBOBOrders]  WITH CHECK ADD  CONSTRAINT [FK_tblOrdersBOBOrders_tblOrderDICContragent] FOREIGN KEY([id_Contragent])
REFERENCES [dbo].[tblOrderDICContragent] ([id])
GO
ALTER TABLE [dbo].[tblOrdersBOBOrders] CHECK CONSTRAINT [FK_tblOrdersBOBOrders_tblOrderDICContragent]
GO
/****** Object:  ForeignKey [FK_tblOrdersBOBOrders_tblPersonBOBClients]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblOrdersBOBOrders]  WITH CHECK ADD  CONSTRAINT [FK_tblOrdersBOBOrders_tblPersonBOBClients] FOREIGN KEY([id_Client])
REFERENCES [dbo].[tblPersonBOBClients] ([id])
GO
ALTER TABLE [dbo].[tblOrdersBOBOrders] CHECK CONSTRAINT [FK_tblOrdersBOBOrders_tblPersonBOBClients]
GO
/****** Object:  ForeignKey [FK_tblOrdersBOBOrders_tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblOrdersBOBOrders]  WITH CHECK ADD  CONSTRAINT [FK_tblOrdersBOBOrders_tblWashersBOBWasher] FOREIGN KEY([id_CarWash])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[tblOrdersBOBOrders] CHECK CONSTRAINT [FK_tblOrdersBOBOrders_tblWashersBOBWasher]
GO
/****** Object:  ForeignKey [FK_tblPersonBOBPays_btlPersonBOBPerson]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblPersonBOBPays]  WITH CHECK ADD  CONSTRAINT [FK_tblPersonBOBPays_btlPersonBOBPerson] FOREIGN KEY([id_Person])
REFERENCES [dbo].[btlPersonBOBPerson] ([id])
GO
ALTER TABLE [dbo].[tblPersonBOBPays] CHECK CONSTRAINT [FK_tblPersonBOBPays_btlPersonBOBPerson]
GO
/****** Object:  ForeignKey [FK_tblStokBOBStokAudit_tblUsersBOBUsers]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblStokBOBStokAudit]  WITH CHECK ADD  CONSTRAINT [FK_tblStokBOBStokAudit_tblUsersBOBUsers] FOREIGN KEY([id_whoMake])
REFERENCES [dbo].[tblUsersBOBUsers] ([id])
GO
ALTER TABLE [dbo].[tblStokBOBStokAudit] CHECK CONSTRAINT [FK_tblStokBOBStokAudit_tblUsersBOBUsers]
GO
/****** Object:  ForeignKey [FK_tblStokBOBStokAudit_tblWashersBOBWasher]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblStokBOBStokAudit]  WITH CHECK ADD  CONSTRAINT [FK_tblStokBOBStokAudit_tblWashersBOBWasher] FOREIGN KEY([id_CarWash])
REFERENCES [dbo].[tblWashersBOBWasher] ([id])
GO
ALTER TABLE [dbo].[tblStokBOBStokAudit] CHECK CONSTRAINT [FK_tblStokBOBStokAudit_tblWashersBOBWasher]
GO
/****** Object:  ForeignKey [FK_tblStokBOBStokAuditItems_tblStokBOBStokAudit]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblStokBOBStokAuditItems]  WITH CHECK ADD  CONSTRAINT [FK_tblStokBOBStokAuditItems_tblStokBOBStokAudit] FOREIGN KEY([id_Audit])
REFERENCES [dbo].[tblStokBOBStokAudit] ([id])
GO
ALTER TABLE [dbo].[tblStokBOBStokAuditItems] CHECK CONSTRAINT [FK_tblStokBOBStokAuditItems_tblStokBOBStokAudit]
GO
/****** Object:  ForeignKey [FK_tblStokBOBStokAuditItems_tblStokDICStokItems]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblStokBOBStokAuditItems]  WITH CHECK ADD  CONSTRAINT [FK_tblStokBOBStokAuditItems_tblStokDICStokItems] FOREIGN KEY([id_Item])
REFERENCES [dbo].[tblStokDICStokItems] ([id])
GO
ALTER TABLE [dbo].[tblStokBOBStokAuditItems] CHECK CONSTRAINT [FK_tblStokBOBStokAuditItems_tblStokDICStokItems]
GO
/****** Object:  ForeignKey [FK_tblOrdersM2MOrderWorkers_tblOrdersBOBOrders]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblOrdersM2MOrderWorkers]  WITH CHECK ADD  CONSTRAINT [FK_tblOrdersM2MOrderWorkers_tblOrdersBOBOrders] FOREIGN KEY([id_User])
REFERENCES [dbo].[btlPersonBOBPerson] ([id])
GO
ALTER TABLE [dbo].[tblOrdersM2MOrderWorkers] CHECK CONSTRAINT [FK_tblOrdersM2MOrderWorkers_tblOrdersBOBOrders]
GO
/****** Object:  ForeignKey [FK_tblOrdersM2MOrderWorkers_tblOrdersBOBOrders1]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblOrdersM2MOrderWorkers]  WITH CHECK ADD  CONSTRAINT [FK_tblOrdersM2MOrderWorkers_tblOrdersBOBOrders1] FOREIGN KEY([id_Order])
REFERENCES [dbo].[tblOrdersBOBOrders] ([id])
GO
ALTER TABLE [dbo].[tblOrdersM2MOrderWorkers] CHECK CONSTRAINT [FK_tblOrdersM2MOrderWorkers_tblOrdersBOBOrders1]
GO
/****** Object:  ForeignKey [FK_tblOrderM2MOrderList_tblOrderBOBOtherService]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblOrderM2MOrderList]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderM2MOrderList_tblOrderBOBOtherService] FOREIGN KEY([id_OtherService])
REFERENCES [dbo].[tblOrderBOBOtherService] ([id])
GO
ALTER TABLE [dbo].[tblOrderM2MOrderList] CHECK CONSTRAINT [FK_tblOrderM2MOrderList_tblOrderBOBOtherService]
GO
/****** Object:  ForeignKey [FK_tblOrderM2MOrderList_tblOrdersBOBOrders]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblOrderM2MOrderList]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderM2MOrderList_tblOrdersBOBOrders] FOREIGN KEY([id_Order])
REFERENCES [dbo].[tblOrdersBOBOrders] ([id])
GO
ALTER TABLE [dbo].[tblOrderM2MOrderList] CHECK CONSTRAINT [FK_tblOrderM2MOrderList_tblOrdersBOBOrders]
GO
/****** Object:  ForeignKey [FK_tblOrderM2MOrderList_tblServiceBOBServiceCosts]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblOrderM2MOrderList]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderM2MOrderList_tblServiceBOBServiceCosts] FOREIGN KEY([id_Service])
REFERENCES [dbo].[tblServiceBOBServiceCosts] ([id])
GO
ALTER TABLE [dbo].[tblOrderM2MOrderList] CHECK CONSTRAINT [FK_tblOrderM2MOrderList_tblServiceBOBServiceCosts]
GO
/****** Object:  ForeignKey [FK_tblOrderM2MOrderList_tblServiceDICProgramms]    Script Date: 05/04/2013 16:31:35 ******/
ALTER TABLE [dbo].[tblOrderM2MOrderList]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderM2MOrderList_tblServiceDICProgramms] FOREIGN KEY([id_Programm])
REFERENCES [dbo].[tblServiceDICProgramms] ([id])
GO
ALTER TABLE [dbo].[tblOrderM2MOrderList] CHECK CONSTRAINT [FK_tblOrderM2MOrderList_tblServiceDICProgramms]
GO
