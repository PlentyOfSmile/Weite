//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace GTACarpool.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Driver
    {
        public int DriverId { get; set; }
        public string Name { get; set; }
        public long Phone { get; set; }
        public string Address { get; set; }
        public decimal AskPrice { get; set; }
        public int Car_CarId { get; set; }
        public int PickupDeliver_StsId { get; set; }
    
        public virtual Car Car { get; set; }
        public virtual PickupDeliver PickupDeliver { get; set; }
    }
}
