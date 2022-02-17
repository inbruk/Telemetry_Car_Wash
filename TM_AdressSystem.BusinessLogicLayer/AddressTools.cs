using System;
using System.Globalization;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Text;
using System.Net;
using System.IO;

using TM_AdressSystem.DataAccessLayer;
using TM_AdressSystem.DataTransferObjects;

namespace TM_AdressSystem.BusinessLogicLayer
{
    public static class AddressTools
    {

        public static List<NearestCarWashInfo>
            GetNearestCarWashsByRXRY(Int32 UserId, decimal Lon, decimal Lat, decimal RangeX, decimal RangeY, Int32 maxItemsCount)
        {
            DB_Telemetry_AdressSystemEntities ctx = new DB_Telemetry_AdressSystemEntities();
            List<spGetNearestCarWashsByRXRY_Result> entitiesList = ctx.spGetNearestCarWashsByRXRY(UserId, Lon, Lat, RangeX, RangeY, maxItemsCount).ToList();

            List<NearestCarWashInfo> res = entitiesList.Select
            ( x =>
                new NearestCarWashInfo()
                {
                    id = x.id,
                    Address = x.Address,
                    Latitude = x.Latitude,
                    Longitude = x.Longitude,
                    id_PlaceState = 0,
                    Name = x.Name,
                    Rate = x.Rate,
                    IsInBlackList = (x.IsInBlackList==1) ? true : false,
                    IsInFavoritiesList = (x.IsInFavoritiesList==1) ? true : false
                }
            ).ToList();

            // тут можно добавить вызов сервиса, который вернет состояния

            return res;
        }

        public static List<NearestCarWashInfoWithRange>
            GetNearestCarWashsByRange(Int32 UserId, decimal Lon, decimal Lat, decimal MaxRange, Int32 maxItemsCount)
        {
            DB_Telemetry_AdressSystemEntities ctx = new DB_Telemetry_AdressSystemEntities();
            List<spGetNearestCarWashsByMaxRange_Result> entitiesList = ctx.spGetNearestCarWashsByMaxRange(UserId, Lon, Lat, MaxRange, maxItemsCount).ToList();

            List<NearestCarWashInfoWithRange> res = entitiesList.Select
            (x =>
                new NearestCarWashInfoWithRange()
                {
                    id = x.id,
                    Address = x.Address,
                    Latitude = x.Latitude,
                    Longitude = x.Longitude,
                    CurrRange = x.CurrRange,
                    id_PlaceState = 0,
                    Name = x.Name,
                    Rate = x.Rate,
                    IsInBlackList = (x.IsInBlackList == 1) ? true : false,
                    IsInFavoritiesList = (x.IsInFavoritiesList == 1) ? true : false
                }
            ).ToList();

            // тут можно добавить вызов сервиса, который вернет состояния

            return res;
        }


        public static GeoCoords GetGeoCoordsByAddress(AddressInParts currAddress)
        {
            GeoCoords resCoords = new GeoCoords();

            StringBuilder requestSB = new StringBuilder(1000);
            requestSB.Append("http://nominatim.openstreetmap.org/search?country=");
            requestSB.Append(currAddress.Country);
            requestSB.Append("&city=");
            requestSB.Append(currAddress.Settelement);
            requestSB.Append("&street=");
            requestSB.Append(currAddress.House);
            requestSB.Append(" ");
            requestSB.Append(currAddress.Street);
            requestSB.Append("&format=xml&polygon=1&addressdetails=1&limit=1&accept-language=ru-RU");

            String requestStr = requestSB.ToString();
            WebRequest webRequest = WebRequest.Create(requestStr);
            WebResponse webResp = webRequest.GetResponse();         
            StreamReader reader = new StreamReader( webResp.GetResponseStream() );
            String respStr = reader.ReadToEnd();

            CultureInfo  culture = CultureInfo.CreateSpecificCulture("en-US");
            NumberStyles numStyle = NumberStyles.Number | NumberStyles.AllowDecimalPoint;

            String LongitudeStr = respStr.Substring( respStr.IndexOf("lon=\'") + "lon=\'".Length );
            LongitudeStr = LongitudeStr.Substring(0,LongitudeStr.IndexOf("\'"));
            decimal lon;
            if( decimal.TryParse(LongitudeStr, numStyle, culture, out lon)==false )
            {
                resCoords.IsValidValues = false;
                return resCoords;
            }
            resCoords.Longitude = lon;

            String LatitudeStr = respStr.Substring(respStr.IndexOf("lat=\'") + "lat=\'".Length);
            LatitudeStr = LatitudeStr.Substring(0, LatitudeStr.IndexOf("\'"));
            decimal lat;
            if (decimal.TryParse(LatitudeStr, numStyle, culture, out lat) == false)
            {
                resCoords.IsValidValues = false;
                return resCoords;
            }
            resCoords.Latitude = lat;

            resCoords.IsValidValues = true;
            return resCoords;
        }
    }
}
