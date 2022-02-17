CREATE TABLE [dbo].[tblAdressBOBRegions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_Country] [int] NOT NULL,
	[Name] [varchar](200) NOT NULL,

 CONSTRAINT [FK_tblAdressBOBRegions_tblAdressDICCountry] FOREIGN KEY([id_Country]) REFERENCES [dbo].[tblAdressDICCountry] ([id]),
 CONSTRAINT [PK_tblAdressBOBRegions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]