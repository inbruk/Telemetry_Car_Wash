using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

using TM_AdressSystem.BusinessLogicLayer;
using TM_AdressSystem.DataTransferObjects;

namespace TM_AdressSystem.ServiceLayer
{
    /// <summary>
    /// Summary description for TM_AdressSystem_WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class TM_AdressSystem_WebService : System.Web.Services.WebService
    {
        [WebMethod]
        public List<NearestCarWashInfo> GetNearestCarWashsByRXRY( 
            Int32 UserId, decimal Lon, decimal Lat, decimal RangeX, decimal RangeY, Int32 maxItemsCount )
        {
            List<NearestCarWashInfo> res = AddressTools.GetNearestCarWashsByRXRY(UserId, Lon, Lat, RangeX, RangeY, maxItemsCount);
            return res; 
        }

        [WebMethod]
        public List<NearestCarWashInfoWithRange> GetNearestCarWashsByRange(
            Int32 UserId, decimal Lon, decimal Lat, decimal MaxRange, Int32 maxItemsCount)
        {
            List<NearestCarWashInfoWithRange> res = AddressTools.GetNearestCarWashsByRange(UserId, Lon, Lat, MaxRange, maxItemsCount);
            return res;
        }

        [WebMethod]
        public GeoCoords GetGeoCoordsByAddress( String country, String settelement, String street, String house )
        {
            AddressInParts currAddress = new AddressInParts()
            {
                Country = country,
                Settelement = settelement,
                Street = street,
                House = house
            };

            GeoCoords res = AddressTools.GetGeoCoordsByAddress(currAddress);
            return res;
        }

        [WebMethod]
        public List<NearestCarWashInfoWithRange> GetNearestCarWashsToAddress(
            Int32 UserId, String country, String settelement, String street, String house, decimal MaxRange, Int32 maxItemsCount)
        {
            AddressInParts currAddress = new AddressInParts()
            {
                Country = country,
                Settelement = settelement,
                Street = street,
                House = house
            };

            GeoCoords coords = AddressTools.GetGeoCoordsByAddress(currAddress);
            if (coords.IsValidValues == false)
            {
                throw new Exception("Address coordinates not found.");
            }

            decimal Lon = coords.Longitude;
            decimal Lat = coords.Latitude;
            List<NearestCarWashInfoWithRange> res = AddressTools.GetNearestCarWashsByRange(UserId, Lon, Lat, MaxRange, maxItemsCount);
            return res;
        }
    }
}
