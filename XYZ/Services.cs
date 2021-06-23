using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace XYZ
{
    public class Services // services class 
    {
        //sql connection
        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        public int serviceId { get; set; }
        public string serviceName { get; set; }

        public decimal servicePrice { get; set; }

        public void newService(Services srv)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                try
                {
                    string sql = "INSERT INTO tbl_services (name, price) " +
                        "VALUES ('" + srv.serviceName + "', '" + srv.servicePrice+ "') ";
                    ExecuteQuery(sql);
                }

                catch (SqlException ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message);
                }
            }

        }

        public void ExecuteQuery(string sql)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                try // Error handeling 
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.ExecuteNonQuery();
                }

                catch (SqlException ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message);
                }

                finally
                {
                    con.Close();
                }
                return;
            }
        }
    }
}