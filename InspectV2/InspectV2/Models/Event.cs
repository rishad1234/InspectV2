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
        public string Company { get; set; }

        [Required]
        public string Location { get; set; }

        [Required]
        public string Title { get; set; }

        [Required]
        public string Body { get; set; }

        [Required]
        public string Link { get; set; }

        [Required]
        public DateTime EventDate { get; set; }

        [Required]
        public string EventTime { get; set; }

        public int SeatCount { get; set; }
    }
}