using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace samplemvcapp.Models
{

    public class CaseDetailsModel
    {

        public static string CaseFile = HttpContext.Current.Server.MapPath("~/Content/Clients.json");
        public String caseid { get; set; }
        public String casereceiveddate { get; set; }
        public int petitioner { get; set; }
        public int respondent { get; set; }
        public String classification { get; set; }
        public String casecharge { get; set; }
        public String casename { get; set; }
        public String casetype { get; set; }
        public int prosecutor { get; set; }
        public int judge { get; set; }
        public String penalcode { get; set; }
        public String status { get; set; }
        public int assignedto { get; set; }
        public String receivedfrom { get; set; }
        public String stage { get; set; }
        public String courthouse { get; set; }
        public String category { get; set; }
        public List<ContactModel> contact { get; set; }


        public static List<CaseDetailsModel> GetCases()
        {
            List<CaseDetailsModel> clients = new List<CaseDetailsModel>();
            if (File.Exists(CaseFile))
            {
                // File exists..
                string content = File.ReadAllText(CaseFile);

                // Deserialize the objects 
                clients = JsonConvert.DeserializeObject<List<CaseDetailsModel>>(content);

                // Returns the clients, either empty list or containing the Client(s).
                return clients;
            }
            else
            {
                // Create the file 
                File.Create(CaseFile).Close();
                // Write data to it; [] means an array, 
                // List<Client> would throw error if [] is not wrapping text
                File.WriteAllText(CaseFile, "[]");

                // Re run the function
                GetCases();
            }

            return clients;
        }

        public static CaseDetailsModel GetCase(String id)
        {
            CaseDetailsModel client = new CaseDetailsModel();
            if (File.Exists(CaseFile))
            {
                // File exists..
                string content = File.ReadAllText(CaseFile);

                // Deserialize the objects 
                List<CaseDetailsModel> clients = JsonConvert.DeserializeObject<List<CaseDetailsModel>>(content);

                foreach(CaseDetailsModel c in clients)
                {
                    if (c.caseid == id)
                    {
                        client = c;
                        break;
                    }
                }

                // Returns the clients, either empty list or containing the Client(s).
                return client;
            }
            else
            {
                // Create the file 
                File.Create(CaseFile).Close();
                // Write data to it; [] means an array, 
                // List<Client> would throw error if [] is not wrapping text
                File.WriteAllText(CaseFile, "[]");

                // Re run the function
                GetCases();
            }

            return client;
        }
    }
}