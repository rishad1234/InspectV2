using InspectV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InspectV2.ViewModels
{
    public class NewsDetailsVIewModel
    {
        public List<News> NewsList { get; set; }
        public News News { get; set; }
    }
}