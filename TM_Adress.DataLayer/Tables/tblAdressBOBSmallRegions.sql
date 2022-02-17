CREATE TABLE [dbo].[tblAdressBOBSmallRegions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_State] [int] NOT NULL,
	[Name] [varchar](200) NOT NULL,

 CONSTRAINT [FK_tblAdressBOBSmallRegions_tblAdressBOBStates] FOREIGN KEY([id_State]) REFERENCES [dbo].[tblAdressBOBStates] ([id]),
 CONSTRAINT [PK_tblAdressBOBSmallRegions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]