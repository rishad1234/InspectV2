using InspectV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using InspectV2.ViewModels;

namespace InspectV2.Controllers
{
    public class HomeController : Controller
    {
        private ApplicationDbContext _context;

        public HomeController()
        {
            _context = new ApplicationDbContext();
        }

        protected override void Dispose(bool disposing)
        {
            _context.Dispose();
        }
        public ActionResult Index()
        {
            var NewsCategories = _context.NewsCategories.ToList();
            var news = _context.News.OrderByDescending(x => x.Created_at).ToList();

            var viewModel = new IndexHomeViewModel
            {
                News = news,
                NewsCategories = NewsCategories
            };

            return View(viewModel);
        }
        [Route("newsdetails/{newsId}")]
        public ActionResult NewsDetails(int newsId)
        {
            var news = _context.News.SingleOrDefault(c => c.Id == newsId);

            return View(news);
        }

        [Route("river")]
        public ActionResult River()
        {
            var news = _context.News.OrderByDescending(x => x.Created_at).ToList();

            var viewModel = new RiverNewsViewModel
            {
                News = news
            };

            return View(viewModel);
        }     
    }
}