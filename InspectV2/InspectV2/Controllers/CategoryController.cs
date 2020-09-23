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

        public ActionResult CategoryDetails(int id)
        {
            var CategoryName = Context.NewsCategories.Find(id).CategoryName.ToString();
            var CategoryNews = Context.Database.SqlQuery<News>("Select * from News where(NewsCategory_Id = {0}) Order By Created_at DESC", id).ToList();
            var Sponsored = Context.News.OrderByDescending(x => x.Created_at).ToList();

            var ViewModel = new CategoryViewModel
            {
                CategoryName = CategoryName,
                News = CategoryNews,
                Sponsored = Sponsored,

            };

            return View("Category", ViewModel);
        }
    }
}