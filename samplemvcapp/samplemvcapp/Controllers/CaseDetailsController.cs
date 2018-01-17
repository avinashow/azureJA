using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;
using samplemvcapp.Models;
using WebMatrix.Data;

namespace samplemvcapp.Controllers
{
    [CustomAuthorize(Roles="admin")]
    public class CaseDetailsController : Controller
    {
        //
        // GET: /CaseDetails/
        
        public ActionResult Index()
        {
            ViewBag.currentPage = "caseList";
            var cases = CaseDetailsModel.GetCases();
            if (cases != null)
            {
                ViewBag.calendardates = getCalendarDates(cases);
            }
            else
            {
                ViewBag.calendardates = new Dictionary<String,List<Dictionary<String,String>>>();
            }
            return View(cases);
        }

        public static Dictionary<String, List<Dictionary<String,String>>> getCalendarDates(List<CaseDetailsModel> cases)
        { 
            Dictionary<String, List<Dictionary<String,String>>> result = new Dictionary<string, List<Dictionary<String,String>>>();

            List<Dictionary<String,String>> list;

            foreach(CaseDetailsModel c in cases)
            {
                var ket = c.casereceiveddate.Split('T');
                list = (result.ContainsKey(ket[0]))?result[ket[0]]:new List<Dictionary<String,String>>();
                list.Add(CaseDetailsController.getListJson(c));
                result[ket[0]]= list;
            }

            return result;
        }

        [HttpPost]
        public String UpdateCategory(List<CaseDetailsModel> model)
        {
            CaseDetailsModel.UpdateCase(model);
            /*var ClientFile = CaseDetailsModel.CaseFile;
            System.IO.File.WriteAllText(ClientFile, string.Empty);*/
            Dictionary<String,String> resp = new Dictionary<string,string>();
           /* System.IO.File.WriteAllText(ClientFile, JsonConvert.SerializeObject(model));*/
            resp.Add("message","success");
            return JsonConvert.SerializeObject(resp);
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


        public ActionResult CaseDetail(String id)
        {
            //ViewBag.caseid = (String)this.ControllerContext.RouteData.Values["id"];
            ViewBag.caseid = id;
            ViewBag.breadCrumb = "<li class='breadcrumb-item'><a href='/CaseDetails'>Case List</a></li><li class='breadcrumb-item active'>Case Details</li>";
            ViewBag.currentPage = "caseDetail";
            return View(CaseDetailsModel.GetCase(id));
        }

        public ActionResult Timeline(String id)
        {
            ViewBag.currentPage = "caseTimeLine";
            ViewBag.breadCrumb = "<li class='breadcrumb-item'><a href='/CaseDetails'>Case List</a></li><li class='breadcrumb-item'><a href='/CaseDetails/CaseDetail/" + id + "'>Case Details</a></li><li class='breadcrumb-item active'>Time Line</li>";
            return View();
        }

        public ActionResult Create()
        {
            ViewBag.currentPage = "caseCreate";
            ViewBag.submitted = false;
            return View();
        }

        [HttpPost]
        public ActionResult Create(CaseDetailsModel casedetail)
        {
            CaseDetailsModel.CreateCase(casedetail);
            ViewBag.currentPage = "caseCreate";
            ViewBag.submitted = true;
            ViewBag.Message = "Case Created Successfully ";
            return View();
        }

    }
}
