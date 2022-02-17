using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TM_AdressSystem.DataTransferObjects
{
    public class NearestCarWashInfoWithRange
    {
        public int id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public decimal Longitude { get; set; }
        public decimal Latitude { get; set; }
        public int id_PlaceState { get; set; }
        public Nullable<decimal> CurrRange { get; set; }
        public Nullable<short> Rate { get; set; }
        public Boolean IsInFavoritiesList { get; set; }
        public Boolean IsInBlackList { get; set; }
    }
}
