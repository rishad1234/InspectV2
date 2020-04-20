using InspectV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InspectV2.Controllers
{
    public class EventController : Controller
    {

        private ApplicationDbContext Context;

        public EventController()
        {
            Context = new ApplicationDbContext();
        }

        protected override void Dispose(bool disposing)
        {
            Context.Dispose();
        }
        // GET: Event
        public ActionResult Index()
        {
            var Events = Context.Events.OrderByDescending(x => x.EventDate).ToList();

            return View(Events);
        }

        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult Create(Event NewEvent)
        {
            if (!ModelState.IsValid)
            {
                return RedirectToAction("Create");
            }
            else
            {
                Context.Events.Add(NewEvent);
                Context.SaveChanges();
            }
            return RedirectToAction("Index");
        }

        public ActionResult Details(int Id)
        {
            Event e = Context.Events.Find(Id);
            return View("Details", e);
        }
    }
}