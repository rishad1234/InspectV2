using InspectV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InspectV2.ViewModels
{
    public class CategoryViewModel
    {
        public String CategoryName { get; set; }
        public List<News> News { get; set; }
    }
}