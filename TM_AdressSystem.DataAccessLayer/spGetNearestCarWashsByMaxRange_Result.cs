//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TM_AdressSystem.DataAccessLayer
{
    using System;
    
    public partial class spGetNearestCarWashsByMaxRange_Result
    {
        public int id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public decimal Longitude { get; set; }
        public decimal Latitude { get; set; }
        public Nullable<decimal> CurrRange { get; set; }
        public Nullable<short> Rate { get; set; }
        public int IsInFavoritiesList { get; set; }
        public int IsInBlackList { get; set; }
        public Nullable<int> SortCounter { get; set; }
    }
}
