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
        public ActionResult AltIndex()
        {
            return View();
        }
        
        [Authorize]
        public ActionResult Index()
        {
            ViewBag.currentPage = "home";
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.currentPage = "caseList";
            var cases = CaseDetailsModel.GetCases();
            if (cases != null)
            {
                ViewBag.calendardates = getCalendarDates(cases);
            }
            else
            {
                ViewBag.calendardates = new Dictionary<String, List<Dictionary<String, String>>>();
            }
            return View(cases);
        }

        public static Dictionary<String, List<Dictionary<String, String>>> getCalendarDates(List<CaseDetailsModel> cases)
        {
            Dictionary<String, List<Dictionary<String, String>>> result = new Dictionary<string, List<Dictionary<String, String>>>();

            List<Dictionary<String, String>> list;

            foreach (CaseDetailsModel c in cases)
            {
                var ket = c.casereceiveddate.Split('T');
                list = (result.ContainsKey(ket[0])) ? result[ket[0]] : new List<Dictionary<String, String>>();
                list.Add(getListJson(c));
                result[ket[0]] = list;
            }

            return result;
        }

        private static Dictionary<String, String> getListJson(CaseDetailsModel c)
        {
            Dictionary<String, String> dict = new Dictionary<string, string>();
            dict["casename"] = c.casename;
            dict["caseid"] = c.caseid;
            dict["casereceiveddate"] = c.casereceiveddate;
            dict["classification"] = c.casetype;
            dict["category"] = c.category;
            dict["summary"] = c.summary;
            dict["subject"] = c.subject;
            return dict;
        }

        public ActionResult Unauthorized()
        {
            ViewBag.currentPage = "two";
            ViewBag.Message = "You are Unauthorized to access the page";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.currentPage = "contact";
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult adminIndex()
        {
            return View();
        }
    }
}
