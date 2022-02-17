SET IDENTITY_INSERT [dbo].[tblAdressDICCountry] ON
GO
if not exists (select * from [dbo].[tblAdressDICCountry] where [id] = 1)
	INSERT [dbo].[tblAdressDICCountry] ([id], [Country]) VALUES (1, N' Россия')
GO
SET IDENTITY_INSERT [dbo].[tblAdressDICCountry] OFF
GO