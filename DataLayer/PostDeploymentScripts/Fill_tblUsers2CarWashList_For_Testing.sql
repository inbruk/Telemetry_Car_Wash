
if not exists (select * from [dbo].[tblUsers2CarWashList] where [id] = 13 AND [id_CarWashLink] = 3 AND [id_Users2CarWashListType] = 1)
	INSERT INTO [dbo].[tblUsers2CarWashList] ( [id_User], [id_CarWashLink], [id_Users2CarWashListType] ) VALUES (13, 3, 1)
GO

if not exists (select * from [dbo].[tblUsers2CarWashList] where [id] = 13 AND [id_CarWashLink] = 4 AND [id_Users2CarWashListType] = 1)
	INSERT INTO [dbo].[tblUsers2CarWashList] ( [id_User], [id_CarWashLink], [id_Users2CarWashListType] ) VALUES (13, 4, 1)
GO

if not exists (select * from [dbo].[tblUsers2CarWashList] where [id] = 13 AND [id_CarWashLink] = 5 AND [id_Users2CarWashListType] = 2)
	INSERT INTO [dbo].[tblUsers2CarWashList] ( [id_User], [id_CarWashLink], [id_Users2CarWashListType] ) VALUES (13, 5, 2)
GO

if not exists (select * from [dbo].[tblUsers2CarWashList] where [id] = 14 AND [id_CarWashLink] = 3 AND [id_Users2CarWashListType] = 2)
	INSERT INTO [dbo].[tblUsers2CarWashList] ( [id_User], [id_CarWashLink], [id_Users2CarWashListType] ) VALUES (14, 3 ,2)
GO

if not exists (select * from [dbo].[tblUsers2CarWashList] where [id] = 14 AND [id_CarWashLink] = 4 AND [id_Users2CarWashListType] = 2)
	INSERT INTO [dbo].[tblUsers2CarWashList] ( [id_User], [id_CarWashLink], [id_Users2CarWashListType] ) VALUES (14, 4 ,2)
GO

if not exists (select * from [dbo].[tblUsers2CarWashList] where [id] = 14 AND [id_CarWashLink] = 5 AND [id_Users2CarWashListType] = 1)
	INSERT INTO [dbo].[tblUsers2CarWashList] ( [id_User], [id_CarWashLink], [id_Users2CarWashListType] ) VALUES (14, 5 ,1)
GO

