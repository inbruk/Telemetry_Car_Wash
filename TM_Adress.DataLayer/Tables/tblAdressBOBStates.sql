CREATE TABLE [dbo].[tblAdressBOBStates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Region] [int] NOT NULL,
	[StateName] [varchar](200) NOT NULL,

 CONSTRAINT [FK_tblAdressBOBStates_tblAdressBOBRegions] FOREIGN KEY([id_Region]) REFERENCES [dbo].[tblAdressBOBRegions] ([id]),
 CONSTRAINT [PK_tblAdressBOBStates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]