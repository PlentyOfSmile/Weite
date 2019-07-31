using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace CoreMvcCarPool.Models
{
    public class CarPoolContext : DbContext
    {
        public CarPoolContext (DbContextOptions<CarPoolContext> options)
            : base(options)
        {
        }

        public DbSet<CoreMvcCarPool.Models.Trip> Trip { get; set; }
    }
}
