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

if not exists (select * from [dbo].[tblCarWashLinks] where [ExternalLink] = 'C7856AE2-00C8-4C27-8C44-6DD4ACE35EC9')
INSERT INTO [dbo].[tblCarWashLinks] ( [ExternalLink], [Rate] )
     VALUES ( 'C7856AE2-00C8-4C27-8C44-6DD4ACE35EC9', NULL )
GO

if not exists (select * from tblCarWashLinks where [ExternalLink] = '11CE4A0A-9949-4CB9-A8FB-02ADF84ED419')
INSERT INTO [dbo].[tblCarWashLinks] ( [ExternalLink], [Rate] )
     VALUES ( '11CE4A0A-9949-4CB9-A8FB-02ADF84ED419', NULL )
GO

if not exists (select * from tblCarWashLinks where [ExternalLink] = '11CE4A0A-9949-4CB9-A8FB-02ADF84ED418')
INSERT INTO [dbo].[tblCarWashLinks] ( [ExternalLink], [Rate] )
     VALUES ( '11CE4A0A-9949-4CB9-A8FB-02ADF84ED418', NULL )
GO

if not exists (select * from tblCarWashLinks where [ExternalLink] = '11CE4A0A-9949-4CB9-A8FB-02ADF84ED417')
INSERT INTO [dbo].[tblCarWashLinks] ( [ExternalLink], [Rate] )
     VALUES ( '11CE4A0A-9949-4CB9-A8FB-02ADF84ED417', NULL )
GO

if not exists (select * from tblCarWashLinks where [ExternalLink] = '11CE4A0A-9949-4CB9-A8FB-02ADF84ED416')
INSERT INTO [dbo].[tblCarWashLinks] ( [ExternalLink], [Rate] )
     VALUES ( '11CE4A0A-9949-4CB9-A8FB-02ADF84ED416', NULL )
GO

