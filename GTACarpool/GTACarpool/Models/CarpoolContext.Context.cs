﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CarpoolSystemEntities : DbContext
    {
        public CarpoolSystemEntities()
            : base("name=CarpoolSystemEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CarMake> CarMakes { get; set; }
        public virtual DbSet<Car> Cars { get; set; }
        public virtual DbSet<City> Cities { get; set; }
        public virtual DbSet<Driver> Drivers { get; set; }
        public virtual DbSet<PickupDeliver> PickupDelivers { get; set; }
        public virtual DbSet<Province> Provinces { get; set; }
    }
}