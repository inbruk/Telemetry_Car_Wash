CREATE TABLE [dbo].[tblUsers]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,  
    [Login] NVARCHAR(MAX) NOT NULL, 
    [Password] NVARCHAR(MAX) NOT NULL, 
    [LastLoginDate] DATETIME2 NULL
)

