using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace InspectV2.Models
{
    public class NewsCategory
    {
        public int Id {get; set;}

        [Required]
        public string CategoryName { get; set; }

        public ICollection<News> News { get; set; }
    }
}