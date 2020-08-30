using InspectV2.Models;
using InspectV2.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InspectV2.Controllers
{
    public class CategoryController : Controller
    {
        private readonly ApplicationDbContext Context;

        public CategoryController()
        {
            Context = new ApplicationDbContext();
        }

        protected override void Dispose(bool disposing)
        {
            Context.Dispose();
        }

        public ActionResult Index()
        {
            return RedirectToAction("Index", "Home");
        }

        //[Route("categorydetails/{categoryId}")]
        public ActionResult CategoryDetails(int id)
        {
            var CategoryNews = Context.NewsCategories.Find(id).News.OrderByDescending(x => x.Created_at).ToList();

            var ViewModel = new CategoryViewModel
            {
                News = CategoryNews,

            };

            return View("Category", CategoryNews);
        }
    }
}