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
    using System.Collections.Generic;
    
    public partial class tblAdressBOBStates
    {
        public tblAdressBOBStates()
        {
            this.tblAdressBOBSmallRegions = new HashSet<tblAdressBOBSmallRegions>();
            this.tblCityBOBCity = new HashSet<tblCityBOBCity>();
        }
    
        public int id { get; set; }
        public int id_Region { get; set; }
        public string StateName { get; set; }
    
        public virtual tblAdressBOBRegions tblAdressBOBRegions { get; set; }
        public virtual ICollection<tblAdressBOBSmallRegions> tblAdressBOBSmallRegions { get; set; }
        public virtual ICollection<tblCityBOBCity> tblCityBOBCity { get; set; }
    }
}