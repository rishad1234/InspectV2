using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using InspectV2.Models;

namespace InspectV2.ViewModels
{
    public class IndexHomeViewModel
    {
        public List<NewsCategory> NewsCategories { get; set; }
        public List<News> News { get; set; }
    }
}