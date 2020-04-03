using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace InspectV2.Models
{
    public class Sponsor
    {
        public int Id { get; set; }

        [Required]
        public string SponsorShip { get; set; }
    }
}