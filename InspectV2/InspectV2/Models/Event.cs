using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace InspectV2.Models
{
    public class Event
    {
        public int Id { get; set; }
        [Required]
        public string Title { get; set; }

        [StringLength(300)]
        [Required]
        public string Body { get; set; }

        [Required]
        public string Link { get; set; }

        [Required]
        public DateTime EventDate { get; set; }

        public int SeatCount { get; set; }
    }
}