using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace samplemvcapp.Controllers
{
    public class CitizenHelpController : Controller
    {
        //
        // GET: /CitizenHelp/

        public ActionResult Index()
        {
            ViewBag.breadCrumb = "<li class='breadcrumb-item'><a href='/Home/AltIndex'>Home</a></li><li class='breadcrumb-item active'>CitizenHelp</li>";
            return View();
        }

    }
}
