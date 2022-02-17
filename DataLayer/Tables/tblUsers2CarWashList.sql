CREATE TABLE [dbo].[tblUsers2CarWashList]
(
    [Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,  
    [id_User] INT NOT NULL,	 
    [id_CarWashLink] INT NOT NULL, 
	id_Users2CarWashListType INT NOT NULL,

    CONSTRAINT [FK_tblUsers2CarWashList_To_tblUsers] FOREIGN KEY ([id_User]) REFERENCES [tblUsers]([Id]), 
    CONSTRAINT [FK_tblUsers2CarWashList_To_tblCarWashLinks] FOREIGN KEY ([id_CarWashLink]) REFERENCES [tblCarWashLinks]([Id]),
    CONSTRAINT [FK_tblUsers2CarWashList_To_tblUsers2CarWashListType] FOREIGN KEY ([id_Users2CarWashListType]) REFERENCES [tblUsers2CarWashListType]([Id]), 
)
