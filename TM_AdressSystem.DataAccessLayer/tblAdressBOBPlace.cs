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
    
    public partial class tblAdressBOBPlace
    {
        public int id { get; set; }
        public int id_Street { get; set; }
        public string Name { get; set; }
        public decimal Latitude { get; set; }
        public decimal Longitude { get; set; }
        public System.Guid ExternalLink { get; set; }
    
        public virtual tblAdressBOBStreet tblAdressBOBStreet { get; set; }
    }
}
