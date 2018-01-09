using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using System.Configuration;
using System.Data.SqlClient;

namespace samplemvcapp.Models
{

    public class CaseDetailsModel
    {

        public static string CaseFile = HttpContext.Current.Server.MapPath("~/Content/Clients.json");
        private static string connstr = "Server=tcp:justicealigndbserver.database.windows.net,1433;Initial Catalog=justicealigndb;Persist Security Info=False;User ID=adminJA;Password=@vinasH90;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        public String caseid { get; set; }
        public String casereceiveddate { get; set; }
        public string summary { get; set; }
        public string subject { get; set; }
        public String classification { get; set; }
        public String casename { get; set; }
        public String casetype { get; set; }
        public String category { get; set; }
        public int id { get; set; }
        /*public int petitioner { get; set; }
        public int respondent { get; set; }
        public String casecharge { get; set; }
        public int prosecutor { get; set; }
        public int judge { get; set; }
        public String penalcode { get; set; }
        public String status { get; set; }
        public int assignedto { get; set; }
        public String receivedfrom { get; set; }
        public String stage { get; set; }
        public String courthouse { get; set; }
        public String category { get; set; }
        public List<ContactModel> contact { get; set; }*/

        public static void CreateCase(CaseDetailsModel casedetail)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connstr))
                {
                    string query = "INSERT INTO [dbo].[Case] (caseid,casereceiveddate, category, summary, subject, casetype, casename) VALUES(@caseid, @casereceiveddate, @category, @summary, @subject, @casetype, @casename)";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.Parameters.AddWithValue("@caseid", casedetail.caseid);
                        cmd.Parameters.AddWithValue("@casename", casedetail.casename.Trim());
                        cmd.Parameters.AddWithValue("@casereceiveddate", casedetail.casereceiveddate.Trim());
                        cmd.Parameters.AddWithValue("@summary", casedetail.summary.Trim());
                        cmd.Parameters.AddWithValue("@subject", casedetail.subject.Trim());
                        cmd.Parameters.AddWithValue("@category", "Reschedule");
                        cmd.Parameters.AddWithValue("@casetype", casedetail.casetype.Trim());
                        casedetail.id = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
            } catch(Exception ex) {   
            }
        }

        public static List<CaseDetailsModel> GetCases()
        {
            CaseDetailsModel caseDetail;
            List<CaseDetailsModel> caseList = new List<CaseDetailsModel>();
            try
            {
                using (SqlConnection con = new SqlConnection(connstr))
                {
                    string query = "Select * from [dbo].[Case]";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        while (rd.Read())
                        {
                                caseDetail = new CaseDetailsModel();
                                caseDetail.caseid =Convert.ToString(rd.GetSqlValue(0));
                                caseDetail.casereceiveddate = Convert.ToString(rd.GetSqlValue(1));
                                caseDetail.casename = Convert.ToString(rd.GetSqlValue(5)).Trim();
                                caseDetail.subject = Convert.ToString(rd.GetSqlValue(3)).Trim();
                                caseDetail.summary = Convert.ToString(rd.GetSqlValue(2)).Trim();
                                caseDetail.category = Convert.ToString(rd.GetSqlValue(7));
                                caseDetail.casetype = Convert.ToString(rd.GetSqlValue(4)).Trim();
                                caseList.Add(caseDetail);
                        }
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
            }
            return caseList;
        }

        public static CaseDetailsModel GetCase(String id)
        {
            CaseDetailsModel caseDetail = new CaseDetailsModel();
            try
            {
                using (SqlConnection con = new SqlConnection(connstr))
                {
                    string query = "Select * from [dbo].[Case] where caseid = " + id;
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        while (rd.Read())
                        {
                            caseDetail.caseid = Convert.ToString(rd.GetSqlValue(0));
                            caseDetail.casereceiveddate = Convert.ToString(rd.GetSqlValue(1));
                            caseDetail.casename = Convert.ToString(rd.GetSqlValue(5));
                            caseDetail.subject = Convert.ToString(rd.GetSqlValue(3)).Trim();
                            caseDetail.summary = Convert.ToString(rd.GetSqlValue(2)).Trim();
                            caseDetail.category = Convert.ToString(rd.GetSqlValue(7));
                            caseDetail.casetype = Convert.ToString(rd.GetSqlValue(4));
                        }
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return caseDetail;
        }

        public static void UpdateCase(List<CaseDetailsModel> caseModel) {
            for (var i = 0; i < caseModel.Count(); i++)
            {
                update(caseModel[i]);
            }
        }

        private static void update(CaseDetailsModel casedetail)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connstr))
                {
                    string query = "Update [dbo].[Case] set  category = @category where caseid = @caseid";
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        con.Open();
                        cmd.Parameters.AddWithValue("@caseid", casedetail.caseid);
                        cmd.Parameters.AddWithValue("@category", casedetail.category.Trim());
                        cmd.ExecuteScalar();
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
            }
        }
    }
}