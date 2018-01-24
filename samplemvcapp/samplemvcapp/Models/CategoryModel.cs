using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace samplemvcapp.Models
{
    public class CategoryModel
    {
        private static string connstr = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public string name { get; set; }
        public int Id { get; set; }

        public static List<CategoryModel> getAll()
        {
            List<CategoryModel> result = new List<CategoryModel>();
            CategoryModel caseType;
            try
            {
                using (SqlConnection con = new SqlConnection(connstr))
                {
                    string query = "Select * from [dbo].[Category]";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        while (rd.Read())
                        {
                            caseType = new CategoryModel();
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