SET IDENTITY_INSERT [dbo].[tblAdressBOBRegions] ON
GO
if not exists (select * from [dbo].[tblAdressBOBRegions] where [id] = 1)
	INSERT [dbo].[tblAdressBOBRegions] ([id], [id_Country], [Name]) VALUES (1, 1, N'Центральный')
GO
SET IDENTITY_INSERT [dbo].[tblAdressBOBRegions] OFF
GO