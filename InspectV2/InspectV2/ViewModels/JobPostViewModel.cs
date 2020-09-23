using InspectV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InspectV2.ViewModels
{
    public class JobPostViewModel
    {
        public List<JobPost> JobPosts { get; set; }
        public List<News> News { get; set; }
    }
}