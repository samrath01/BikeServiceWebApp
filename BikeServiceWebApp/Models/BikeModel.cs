using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BikeServiceWebApp.Models
{
    public class BikeModel
    {
        [Key]
        public int BikeModelID { get; set; }

        [Required]
        [StringLength(100)]
        public string BikeModelName { get; set; }

        [Required]
        [StringLength(50)]
        public string ExtName { get; set; }

        [Required]
        public int CompanyID { get; set; }

        [ForeignKey("CompanyID")]
        [InverseProperty("BikeModels")]
        public Company Company { get; set; }

        [NotMapped]
        public ImageUpload FileUpload { get; set; }

        public ICollection<Booking> Bookings { get; set; }
    }
}
