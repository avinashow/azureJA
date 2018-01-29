using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using samplemvcapp.Models;

namespace samplemvcapp.Controllers
{
    public class CommonServiceController : Controller
    {
        //
        // GET: /CommonService/

        [HttpGet]
        public JsonResult getCaseTypes()
        {
            return Json(new { Response = CaseTypeModel.getAll() }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult getCategories()
        {
            return Json(new { Response = CategoryModel.getAll() }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult getContacts(String caseid)
        {
            return Json(new { Contacts = ContactModel.getContacts(caseid) }, JsonRequestBehavior.AllowGet);
        }

    }
}
