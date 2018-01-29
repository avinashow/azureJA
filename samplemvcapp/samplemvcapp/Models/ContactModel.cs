using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace samplemvcapp.Models
{
    public class ContactModel
    {
        private static string connstr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public int Id { get; set; }
        public String name { get; set; }
        public String partytype
        {
            get;
            set;
        }
        public String gender { get; set; }
        public String cid { get; set; }
        public String nationality { get; set; }
        public String caseid { get; set; }
        public String imgurl { get; set; }


        public static List<ContactModel> getContacts(String caseid)
        {
            List<ContactModel> contacts = new List<ContactModel>();
            ContactModel contact;
            try
            {
                using (SqlConnection con = new SqlConnection(connstr))
                {
                    string query = "Select * from [dbo].[Contact] where caseid = '" + caseid + "'";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        while (rd.Read())
                        {
                            contact = new ContactModel();
                            contact.Id = rd.GetInt32(0);
                            contact.name = Convert.ToString(rd.GetSqlValue(1));
                            contact.partytype = Convert.ToString(rd.GetSqlValue(2));
                            contact.gender = Convert.ToString(rd.GetSqlValue(3));
                            contact.cid = Convert.ToString(rd.GetSqlValue(4));
                            contact.nationality = Convert.ToString(rd.GetSqlValue(5));
                            contact.caseid = Convert.ToString(rd.GetSqlValue(6));
                            contact.imgurl = Convert.ToString(rd.GetSqlValue(7));
                            contacts.Add(contact);
                        }
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return contacts;
        }
    }
}