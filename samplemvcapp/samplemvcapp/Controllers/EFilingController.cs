using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace samplemvcapp.Controllers
{
    public class EFilingController : Controller
    {
        //
        // GET: /EFiling/

        public ActionResult Index()
        {
            ViewBag.breadCrumb = "<li class='breadcrumb-item'><a href='/Home/AltIndex'>Home</a></li><li class='breadcrumb-item active'>E-filing</li>";
            return View();
        }

        public ActionResult Resources()
        {
            ViewBag.breadCrumb = "<li class='breadcrumb-item'><a href='/Home/AltIndex'>Home</a></li><li class='breadcrumb-item'><a href='/EFiling'>E-filing</a></li><li class='breadcrumb-item active'>Resources</li>";
            return View();
        }

    }
}
