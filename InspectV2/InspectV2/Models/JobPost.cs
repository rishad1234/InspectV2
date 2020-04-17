using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace InspectV2.Models
{
    public class JobPost
    {
        public int Id { get; set; }

        [Required]
        public string Company { get; set; }

        [Required]
        public string Position { get; set; }
        public DateTime Deadline { get; set; }

        [Required]
        public string Body { get; set; }
        [Required]
        public string Link { get; set; }
        [Required]
        public DateTime Created_at { get; set; }

        

    }
}