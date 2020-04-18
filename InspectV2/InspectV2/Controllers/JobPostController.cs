using InspectV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InspectV2.Controllers
{
    public class JobPostController : Controller
    {
        private ApplicationDbContext _context;

        public JobPostController()
        {
            _context = new ApplicationDbContext();
        }

        protected override void Dispose(bool disposing)
        {
            _context.Dispose();
        }

        // GET: JobPost
        [Authorize]
        public ActionResult Index()
        {
            var jobPost = _context.Jobs.OrderByDescending(x => x.Created_at).ToList();
            return View(jobPost);
        }
    }
}