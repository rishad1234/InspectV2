using InspectV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InspectV2.Controllers
{
    public class ContactController : Controller
    {
        private ApplicationDbContext Context;

        // GET: Contact

        public ContactController()
        {
            Context = new ApplicationDbContext();
        }

        protected override void Dispose(bool disposing)
        {
            Context.Dispose();
        }
        public ActionResult Index()
        {
            return View("Contact");
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Contact contact)
        {
            if (!ModelState.IsValid)
            {
                return View("Contact");
            }
            else
            {
                Context.Contacts.Add(contact);
                Context.SaveChanges();
            }
            return RedirectToAction("Index", "Home");
        }
    }
}