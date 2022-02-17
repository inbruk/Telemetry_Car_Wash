SET IDENTITY_INSERT [dbo].[tblCityBOBCity] ON
GO
if not exists (select * from [dbo].[tblCityBOBCity] where [id] = 1)
	INSERT [dbo].[tblCityBOBCity] ([id], [id_State], [id_SmallCountry], [Name]) VALUES (1, 1, NULL, N'Москва')
GO
SET IDENTITY_INSERT [dbo].[tblCityBOBCity] OFF
GO