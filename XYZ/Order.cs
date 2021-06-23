using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace XYZ
{
    public class Order // order class 
    {
        // sql connection 
        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        public int orderId { get; set; }
        public int userId { get; set; }
        public int quantity { get; set; }
        public decimal weight { get; set; }
        public int serviceType { get; set; }
        public string isPay { get; set; }
        public string status { get; set; }

        public void saveOrder(Order odr)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                try
                {
                    string sql = "INSERT INTO tbl_order (user_id, i_quant, weight, s_type) VALUES ('" + odr.userId + "', '" + odr.quantity + "', '" + odr.weight + "', '" + odr.serviceType + "') ";
                    ExecuteQuery(sql);
                }

                catch (SqlException ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message);
                }
            }
               
        }

        public void updateOrder(Order odr)
        {
            string sql = " UPDATE tbl_order SET i_quant = '" + odr.quantity + "', weight = '" + odr.weight + "', s_type = '" + odr.serviceType + "' WHERE id = '" + odr.orderId + "' ";
            ExecuteQuery(sql);
        }

        public void deleteOrder(Order odr)
        {
            string sql = " UPDATE tbl_order SET is_del = 'Y' WHERE id = '" + odr.orderId + "' ";
            ExecuteQuery(sql);
        }

        public void updatePaymentStatus(Order odr)
        {
            string sql = " UPDATE tbl_order SET is_pay = 'Y' WHERE id = '" + odr.orderId + "' ";
            ExecuteQuery(sql);
        }

        public void orderStatus(Order odr)
        {
            string sql = " UPDATE tbl_order SET status = 'F' WHERE id = '" + odr.orderId + "' ";
            ExecuteQuery(sql);
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
        public DataSet getData(string sql)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
    }
}