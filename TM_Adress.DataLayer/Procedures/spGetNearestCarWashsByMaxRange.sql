-- внимание ! если БД на разных серверах, то тот который с TM_CarWash надо делать связанным для того на котором DB_Telemetry_AdressSystem
CREATE PROCEDURE spGetNearestCarWashsByMaxRange
	@UserId INT,
	@Lon MONEY, 
	@Lat MONEY, 
	@MaxRange MONEY, 
	@MaxItemsCount INT
AS
	DECLARE @XMin MONEY
	DECLARE @XMax MONEY
	DECLARE @YMin MONEY
	DECLARE @YMax MONEY

	DECLARE @FavListId INT
	DECLARE @BlackListId INT
BEGIN

	SELECT @FavListId = CWLT.Id FROM TM_CarWash.dbo.tblUsers2CarWashListType AS CWLT WHERE CWLT.Name='FavoritiesList'

	SELECT @BlackListId = CWLT.Id FROM TM_CarWash.dbo.tblUsers2CarWashListType AS CWLT WHERE CWLT.Name='BlackList'

	SELECT TOP (@MaxItemsCount)
		RT.*,
		(RT.IsInFavoritiesList - RT.IsInBlackList) AS SortCounter
	FROM
	(
		SELECT 
			PLCT.id,
			PLCT.Name,
			PLCT.Address,
			PLCT.Longitude,
			PLCT.Latitude,
			PLCT.CurrRange,
			CWLT.Rate,

			-- debug CWLT.Id,
			-- debug UCWLTFav.Id,
			-- debug UCWLTBlack.Id,

			CASE WHEN (UCWLTFav.Id) IS NULL -- всегда одна строка так как взаимоисключающие списки
				THEN 0 
				ELSE 1 
			END AS IsInFavoritiesList,

			CASE WHEN (UCWLTBlack.Id) IS NULL  -- всегда одна строка так как взаимоисключающие списки
				THEN 0 
				ELSE 1 
			END AS IsInBlackList

		FROM 
		(
			SELECT 
				PLT.*, 
				-- данные про регион и старну недоделаные или битые, потом добавить их в адрес 
				STAT.StateName + ', ' + CIT.Name + ', ' + STT.Name AS Address				 
			FROM 
			(
				-- сначала выполняем этот запрос, чтобы рассчитать расстояния 
				-- к сожалению в том же запросе WHERE нельзя написать
				SELECT *, dbo.fnCalculateMoneyRange(@Lon, @Lat, Longitude, Latitude) AS CurrRange
			    FROM DB_Telemetry_AdressSystem.dbo.tblAdressBOBPlace 
			) AS PLT
			LEFT JOIN DB_Telemetry_AdressSystem.dbo.tblAdressBOBStreet AS STT ON PLT.id_Street = STT.id
			LEFT JOIN DB_Telemetry_AdressSystem.dbo.tblCityBOBCity AS CIT ON STT.id_City = CIT.id
			LEFT JOIN DB_Telemetry_AdressSystem.dbo.tblAdressBOBStates AS STAT ON CIT.id_State = STAT.id
			WHERE PLT.CurrRange <= @MaxRange
		) AS PLCT

		LEFT JOIN TM_CarWash.dbo.tblCarWashLinks AS CWLT 
			ON PLCT.ExternalLink = CWLT.ExternalLink
		
		LEFT JOIN TM_CarWash.dbo.tblUsers2CarWashList AS UCWLTFav 
			ON CWLT.Id = UCWLTFav.id_CarWashLink AND UCWLTFav.id_Users2CarWashListType = @FavListId AND UCWLTFav.id_User = @UserId

		LEFT JOIN TM_CarWash.dbo.tblUsers2CarWashList AS UCWLTBlack 
			ON CWLT.Id = UCWLTBlack.id_CarWashLink AND UCWLTBlack.id_Users2CarWashListType = @BlackListId AND UCWLTBlack.id_User = @UserId
	) AS RT
	ORDER BY SortCounter DESC, CurrRange ASC

END
GO