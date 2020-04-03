using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace InspectV2.Models
{
    public class News
    {
        public int Id { get; set; }

        [StringLength(255)]
        [Required]
        public string Title { get; set; }

        [Required]
        [StringLength(255)]
        public string Excerpt { get; set; }

        [Required]
        [StringLength(1000)]
        public string Body { get; set; }

        public string Image { get; set; }

        [Required]
        public DateTime Created_at { get; set; }

        public virtual Sponsor Sponsor { get; set; }
        public virtual NewsCategory NewsCategory { get; set; }
    }
}