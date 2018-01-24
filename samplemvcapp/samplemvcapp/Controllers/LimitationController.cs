using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using samplemvcapp.Models;

namespace samplemvcapp.Controllers
{
    public class LimitationController : Controller
    {
        //
        // GET: /Limitation/

        public ActionResult Index()
        {            
            ViewBag.breadCrumb = "<li class='breadcrumb-item'><a href='/Home/AltIndex'>Home</a></li><li class='breadcrumb-item active'>Limitation Calculator</li>";
            return View();
        }

    }
}
