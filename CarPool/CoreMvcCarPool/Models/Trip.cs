using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;


namespace CoreMvcCarPool.Models
{
    public class Trip
    {
        public int Id { get; set; }

        [Required]
        public string FromPlace { get; set; }

        [Required]
        public string ToPlace { get; set; }

        [Display(Name = "出发时间")]
        [DataType(DataType.DateTime)]
        public DateTime LeaveTime { get; set; }

        [Required]
        [Display(Name = "联系方式")]
        public string Contact { get; set; }

        [Display(Name = "剩余座位")]
        public int SeatsLeft { get; set; }

        [Range(1, 500)]
        [DataType(DataType.Currency)]
        [Column(TypeName = "decimal(18,2)")]
        public decimal Price { get; set; }
    }
}
