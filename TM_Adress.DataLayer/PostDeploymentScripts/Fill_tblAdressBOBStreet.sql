SET IDENTITY_INSERT [dbo].[tblAdressBOBStreet] ON
GO
if not exists (select * from [dbo].[tblAdressBOBStreet] where [id] = 1)
	INSERT [dbo].[tblAdressBOBStreet] ([id], [id_City], [Name]) VALUES (1, 1, N' ')
GO
if not exists (select * from [dbo].[tblAdressBOBStreet] where [id] = 2)
	INSERT [dbo].[tblAdressBOBStreet] ([id], [id_City], [Name]) VALUES (2, 1, N'Садовая-Каретная')
GO
if not exists (select * from [dbo].[tblAdressBOBStreet] where [id] = 3)
	INSERT [dbo].[tblAdressBOBStreet] ([id], [id_City], [Name]) VALUES (3, 1, N'Неманский проезд')
GO
if not exists (select * from [dbo].[tblAdressBOBStreet] where [id] = 5)
	INSERT [dbo].[tblAdressBOBStreet] ([id], [id_City], [Name]) VALUES (5, 1, N'Проектируемый проезд 120')
GO
if not exists (select * from [dbo].[tblAdressBOBStreet] where [id] = 7)
	INSERT [dbo].[tblAdressBOBStreet] ([id], [id_City], [Name]) VALUES (7, 1, N'Ярцевская')
GO
SET IDENTITY_INSERT [dbo].[tblAdressBOBStreet] OFF
GO