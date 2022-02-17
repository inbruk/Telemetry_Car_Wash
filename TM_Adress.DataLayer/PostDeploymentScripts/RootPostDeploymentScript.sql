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
:r .\Fill_tblAdressDICCountry.sql
GO
:r .\Fill_tblAdressBOBRegions.sql
GO
:r .\Fill_tblAdressBOBStates.sql
GO
:r .\Fill_tblCityBOBCity.sql
GO
:r .\Fill_tblAdressBOBStreet.sql
GO
:r .\Fill_tblAdressBOBPlace.sql
GO