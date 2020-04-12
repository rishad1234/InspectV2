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

    }
}