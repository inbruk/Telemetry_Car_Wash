CREATE TABLE [dbo].[tblAdressBOBPlace](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Street] [int] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Latitude] [money] NOT NULL,
	[Longitude] [money] NOT NULL,
	[ExternalLink] UNIQUEIDENTIFIER NOT NULL,
	 
 CONSTRAINT [FK_tblAdressBOBPlace_tblAdressBOBStreet] FOREIGN KEY([id_Street]) REFERENCES [dbo].[tblAdressBOBStreet] ([id]), 
 CONSTRAINT [PK_tblAdressBOBPlace] PRIMARY KEY CLUSTERED 
(
	[id] ASC
) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]