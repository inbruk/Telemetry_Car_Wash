CREATE TABLE [dbo].[tblCarWashLinks]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [ExternalLink] UNIQUEIDENTIFIER NOT NULL, 
    [Rate] SMALLINT NULL, 

    CONSTRAINT [CK_CarWashLinks_Rate] CHECK (Rate>=0 AND Rate<=10)
)
