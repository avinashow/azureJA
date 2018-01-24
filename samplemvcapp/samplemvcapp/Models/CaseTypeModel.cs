using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace samplemvcapp.Models
{
    public class CaseTypeModel
    {
        private static string connstr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public string name { get; set; }
        public int Id { get; set; }

        public static List<CaseTypeModel> getAll()
        {
            List<CaseTypeModel> result = new List<CaseTypeModel>();
            CaseTypeModel caseType;
            try
            {
                using (SqlConnection con = new SqlConnection(connstr))
                {
                    string query = "Select * from [dbo].[CaseType]";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        while (rd.Read())
                        {
                            caseType = new CaseTypeModel();
                            caseType.Id = rd.GetInt32(0);
                            caseType.name = Convert.ToString(rd.GetSqlValue(1));
                            result.Add(caseType);
                        }
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
            }
            return result;
        }
    }
}
