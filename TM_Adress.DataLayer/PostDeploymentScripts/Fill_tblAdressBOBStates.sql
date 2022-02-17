SET IDENTITY_INSERT [dbo].[tblAdressBOBStates] ON
GO
if not exists (select * from [dbo].[tblAdressBOBStates] where [id] = 1)
INSERT [dbo].[tblAdressBOBStates] ([id], [id_Region], [StateName]) VALUES (1, 1, N'Московская')
GO
SET IDENTITY_INSERT [dbo].[tblAdressBOBStates] OFF 
GO