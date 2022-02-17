SET IDENTITY_INSERT [dbo].[tblAdressBOBPlace] ON
GO
if not exists (select * from [dbo].[tblAdressBOBPlace] where [id] = 1)
	INSERT [dbo].[tblAdressBOBPlace] ([id], [id_Street], [Name], [Latitude], [Longitude], [ExternalLink]) 
		VALUES (1, 1, N'some1', 56.3, 37.1, 'c7856ae2-00c8-4c27-8c44-6dd4ace35ec9')
GO
if not exists (select * from [dbo].[tblAdressBOBPlace] where [id] = 2)
	INSERT [dbo].[tblAdressBOBPlace] ([id], [id_Street], [Name], [Latitude], [Longitude], [ExternalLink]) 
		VALUES (2, 2, N'some2', 55.5, 37.9, '11ce4a0a-9949-4cb9-a8fb-02adf84ed419')
GO
if not exists (select * from [dbo].[tblAdressBOBPlace] where [id] = 3)
	INSERT [dbo].[tblAdressBOBPlace] ([id], [id_Street], [Name], [Latitude], [Longitude], [ExternalLink]) 
		VALUES (3, 3, N'4к2', 55.8141, 37.3923, '11ce4a0a-9949-4cb9-a8fb-02adf84ed418')
GO
if not exists (select * from [dbo].[tblAdressBOBPlace] where [id] = 4)
	INSERT [dbo].[tblAdressBOBPlace] ([id], [id_Street], [Name], [Latitude], [Longitude], [ExternalLink]) 
		VALUES (4, 5, N'4', 55.7983, 37.3850, '11ce4a0a-9949-4cb9-a8fb-02adf84ed417')
GO
if not exists (select * from [dbo].[tblAdressBOBPlace] where [id] = 5)
	INSERT [dbo].[tblAdressBOBPlace] ([id], [id_Street], [Name], [Latitude], [Longitude], [ExternalLink]) 
		VALUES (5, 7, N'27к1', 55.7418, 37.4167, '11ce4a0a-9949-4cb9-a8fb-02adf84ed416')
GO
SET IDENTITY_INSERT [dbo].[tblAdressBOBPlace] OFF
GO
