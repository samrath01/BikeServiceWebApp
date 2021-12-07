using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BikeServiceWebApp.Models
{
    public class Package
    {
        [Key]
        public int PackageID { get; set; }

        [Required]
        [StringLength(100)]
        public string PackageName { get; set; }

        [Required]
        [StringLength(100)]
        public string TimeTaken { get; set; }

        [Required]
        [StringLength(500)]
        public string Services { get; set; }

        [Required]
        [StringLength(100)]
        public string Warrnty { get; set; }

        [Required]
        [StringLength(100)]
        public string NextService { get; set; }

        [Required]
        public int ServiceID { get; set; }

        [ForeignKey("ServiceID")]
        [InverseProperty("Packages")]
        public Service Service { get; set; }

        public ICollection<Booking> PackageBookings { get; set; }
    }
}
