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
            ViewBag.currentPage = "case";
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
            var ClientFile = CaseDetailsModel.CaseFile;
            System.IO.File.WriteAllText(ClientFile, string.Empty);
            Dictionary<String,String> resp = new Dictionary<string,string>();
            System.IO.File.WriteAllText(ClientFile, JsonConvert.SerializeObject(model));
            resp.Add("message","success");
            return JsonConvert.SerializeObject(resp);
        }

        private static Dictionary<String, String> getListJson(CaseDetailsModel c)
        {
            Dictionary<String, String> dict = new Dictionary<string, string>();
            dict["casename"] = c.casename;
            dict["caseid"] = c.caseid;
            dict["casereceiveddate"] = c.casereceiveddate;
            dict["classification"] = c.classification;
            dict["category"] = c.category;
            return dict;
        }


        public ActionResult CaseDetail(String id)
        {
            //ViewBag.caseid = (String)this.ControllerContext.RouteData.Values["id"];
            ViewBag.caseid = id;
            ViewBag.currentPage = "case";
            return View(CaseDetailsModel.GetCase(id));
        }

        public ActionResult Timeline()
        {
            ViewBag.currentPage = "case";
            return View();
        }

        public ActionResult Create()
        {
            ViewBag.currentPage = "case";
            ViewBag.submitted = false;
            if (HttpContext.Request.RequestType == "POST")
            {
                ViewBag.submitted = true;
                var caseid = Request.Form["caseid"];
                var casename = Request.Form["casename"];
                var classification = Request.Form["classification"];
                var date = Request.Form["casereceiveddate"];

                CaseDetailsModel casemodel = new CaseDetailsModel();

                casemodel.caseid = caseid;
                casemodel.casename = casename;
                casemodel.classification = classification;
                casemodel.casereceiveddate = date;
                casemodel.category = "Reschedule";


                var ClientFile = CaseDetailsModel.CaseFile;

                var ClientData = System.IO.File.ReadAllText(ClientFile);
                List<CaseDetailsModel> ClientList = new List<CaseDetailsModel>();
                ClientList = JsonConvert.DeserializeObject<List<CaseDetailsModel>>(ClientData);

                if (ClientList == null)
                {
                    ClientList = new List<CaseDetailsModel>();
                }
                ClientList.Add(casemodel);

                // Now save the list on the disk
                System.IO.File.WriteAllText(ClientFile, JsonConvert.SerializeObject(ClientList));

                // Denote that the client was created
                bool created = true;

                /*if (ModelState.IsValid)
                {
                    var insertQuery = "INSERT INTO cases (caseid, casename) " +
                    "VALUES (@0, @1)";
                    db.Execute(insertQuery, caseid, casename);
                    // Display the page that lists products.
                    //Response.Redirect("~/Home/CaseDetails");
                }*/
                // Create a new case for these details.
                /*CaseDetails case = new CaseDetails()
                {
                    caseid = model.caseid, 
                    casereceiveddate = model.casereceiveddate,
                    petitioner = model.petitioner,
                    respondent = model.petitioner,
                    classification = model.classification,
                    casecharge = model.casecharge,
                    casename = model.casename,
                    casetype = model.casetype,
                    prosecutor = model.prosecutor,
                    judge = model.judge,
                    penalcode = model.penalcode,
                    status = model.status,
                    assignedto = model.assignedto,
                    receivedfrom = model.receivedfrom,
                    stage = model.stage,
                    courthouse = model.courthouse
                };

                // Save the client in the ClientList
                var CaseFile = case.CaseFile;
                var ClientData = System.IO.File.ReadAllText(ClientFile);
                List<Client> ClientList = new List<Client>();
                ClientList = JsonConvert.DeserializeObject<List<Client>>(ClientData);

                if (ClientList == null)
                {
                    ClientList = new List<Client>();
                }
                ClientList.Add(client);

                // Now save the list on the disk
                System.IO.File.WriteAllText(ClientFile, JsonConvert.SerializeObject(ClientList));

                // Denote that the client was created
                created = true;

                if (created)
                {
                    ViewBag.Message = "Client was created successfully.";
                }
                else
                {
                    ViewBag.Message = "There was an error while creating the client.";
                }*/
                ViewBag.Message = "Case Created Successfully at " + Request.Form["casereceiveddate"];
            }
            return View();
        }

    }
}
