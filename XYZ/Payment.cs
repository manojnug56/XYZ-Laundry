using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace XYZ
{
    public class Payment // payment class 
    {
        //sql connection
        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        public int paymentId { get; set; }
        public int orderId { get; set; }
        public decimal netAmount { get; set; }
       
        public void saveOrder(Payment pmt)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                try
                {
                    string sql = "INSERT INTO tbL_payment (order_id, amount) VALUES ('" + pmt.orderId + "', '" + pmt.netAmount + "') ";
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