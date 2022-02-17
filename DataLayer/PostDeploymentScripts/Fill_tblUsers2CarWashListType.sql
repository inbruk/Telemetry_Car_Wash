/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if not exists (select * from tblUsers2CarWashListType where Name = 'BlackList')
	INSERT INTO [dbo].[tblUsers2CarWashListType] ([Name]) VALUES ( 'BlackList')
GO

if not exists (select * from tblUsers2CarWashListType where Name = 'FavoritiesList')
	INSERT INTO [dbo].[tblUsers2CarWashListType] ([Name]) VALUES ( 'FavoritiesList')
GO

if not exists (select * from tblUsers2CarWashListType where Name = 'VoteList')
	INSERT INTO [dbo].[tblUsers2CarWashListType] ([Name]) VALUES ( 'VoteList')
GO
