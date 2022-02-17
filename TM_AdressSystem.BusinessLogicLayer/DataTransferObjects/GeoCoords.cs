using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TM_AdressSystem.DataTransferObjects
{
    public class GeoCoords
    {
        public decimal Longitude { get; set; }
        public decimal Latitude { get; set; }

        public Boolean IsValidValues { get; set; }
    }
}
