using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using samplemvcapp.Models;

namespace samplemvcapp.Controllers
{
    public class HomeController : Controller
    {
        [Authorize]
        public ActionResult AltIndex()
        {
            ViewBag.currentPage = "home";
            var cases = CaseDetailsModel.GetCases();
            if (cases != null)
            {
                ViewBag.calendardates = CaseDetailsController.getCalendarDates(cases);
            }
            else
            {
                ViewBag.calendardates = new Dictionary<String, List<Dictionary<String, String>>>();
            }
            return View(cases);
        }
        
        [Authorize]
        public ActionResult Index()
        {
            ViewBag.currentPage = "home";
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";

            return View();
        }

        [CustomAuthorize(Roles = "admin")]
        public ActionResult About()
        {
            ViewBag.currentPage = "about";
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Unauthorized()
        {
            //ViewBag.currentPage = "two";
            ViewBag.Message = "You are Unauthorized to access the page";

            return View();
        }

        [CustomAuthorize(Roles = "admin")]
        public ActionResult Contact()
        {
            ViewBag.currentPage = "contact";
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
