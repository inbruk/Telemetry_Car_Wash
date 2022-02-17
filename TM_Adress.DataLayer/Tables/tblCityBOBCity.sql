CREATE TABLE [dbo].[tblCityBOBCity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_State] [int] NULL,
	[id_SmallCountry] [int] NULL,
	[Name] [varchar](200) NOT NULL,

 CONSTRAINT [FK_tblCityBOBCity_tblAdressBOBStates] FOREIGN KEY([id_State]) REFERENCES [dbo].[tblAdressBOBStates] ([id]),
 CONSTRAINT [FK_tblCityBOBCity_tblAdressBOBSmallRegions] FOREIGN KEY([id_SmallCountry]) REFERENCES [dbo].[tblAdressBOBSmallRegions] ([id]),
 CONSTRAINT [PK_tblCityBOBCity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]