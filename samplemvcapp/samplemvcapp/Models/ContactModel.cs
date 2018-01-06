using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace samplemvcapp.Models
{
    public class ContactModel
    {

        public string name { get; set; }
        public string partytype { get; set; }
        public string gender { get; set; }
        public string ssn { get; set; }
        public string status { get; set; }
        public string nationality { get; set; }
        public string noofcases { get; set;}
        public string caseid { get; set; }
    }
}
