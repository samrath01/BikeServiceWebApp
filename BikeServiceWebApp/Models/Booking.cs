using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BikeServiceWebApp.Models
{
    public class Booking
    {
        [Key]
        public int BookingID { get; set; }

        [Required]
        [StringLength(100)]
        public string UserName { get; set; }

        [StringLength(20)]
        public string ContactNo { get; set; }

        [StringLength(20)]
        public string Status { get; set; }

        [Required]
        public DateTime BookingDate { get; set; }

        [Required]
        public int PackageID { get; set; }

        [ForeignKey("PackageID")]
        [InverseProperty("PackageBookings")]
        public Package Package { get; set; }

        [Required]
        public int BikeModelID { get; set; }

        [ForeignKey("BikeModelID")]
        [InverseProperty("Bookings")]
        public BikeModel BikeModel { get; set; }
    }
}
