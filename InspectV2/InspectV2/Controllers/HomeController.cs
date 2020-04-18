﻿using InspectV2.Models;
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
            var news = _context.News.ToList();

            var viewModel = new IndexHomeViewModel();
            viewModel.News = news;
            viewModel.NewsCategories = NewsCategories;

            return View(viewModel);
        }
        [Route("Home/newsdetails/{newsId}")]
        public ActionResult NewsDetails(int newsId)
        {
            return Content("id = "+newsId);
        }
    }
}