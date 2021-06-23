using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Windows.Forms;

namespace XYZ
{
    public class User // user class
    {
        //sql connection
        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        public int userId { get; set; }
        public string uName { get; set; } // user name
        public string uMail { get; set; } // email
        public string uNic { get; set; } // user nic
        public string uAdress { get; set; } // adress
        public string uContact { get; set; } // contact details
        public string password { get; set; }
        public string uType { get; set; } // type of user 
        public string registeredDate { get; set; }

        public void saveUser(User usr)
        {
            using (SqlConnection con = new SqlConnection(cs))
                try
                {

                    SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM tbl_user WHERE u_name = '" + usr.uName + "' ", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    int user_exits = (int)cmd.ExecuteScalar();

                    if (user_exits > 0)
                    {
                        MessageBox.Show("User Already Registered !", "Exists", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }

                    else
                    {
                        string sql = "INSERT INTO tbl_user (u_name, u_mail, u_password, user_type) VALUES ('" + usr.uName + "','" + usr.uMail + "', HashBytes('SHA1', '" + usr.password + "'), '" + usr.uType + "') ";
                        ExecuteQuery(sql);
                        MessageBox.Show("Registration Successfull!", "Saved", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        SqlDataAdapter sda = new SqlDataAdapter("SELECT id FROM  tbl_user WHERE u_name = '" + usr.uName + "' ", cs);
                        DataTable dt = new DataTable(); //this is creating a virtual table  
                        sda.Fill(dt);

                        int id = Convert.ToInt32(dt.Rows[0][0]);

                        MessageBox.Show("Your id is "+" "+"'"+id.ToString()+"'");

                    }
                }

                catch (SqlException ex)
                {
                    MessageBox.Show(ex.Message);
                }

                finally
                {
                    con.Close();
                }
        }

        public void updateUser(User usr)
        {
            string sql = "UPDATE tbl_user SET u_name = '" + usr.uName + "', u_mail = '" + usr.uMail + "', " +
                "u_password = HashBytes('SHA1', '" + usr.password + "'), nic = '" + usr.uNic + "', " +
                "address = '" + usr.uAdress + "', contact = '" + usr.uContact + "' WHERE id = '" + usr.userId + "' ";
            ExecuteQuery(sql);

            MessageBox.Show("Successfully Updated !");
        }

        public void deleteUser(User usr)
        {
            string sql = "DELETE FROM tbl_user WHERE id = '" + usr.userId + "' ";
            ExecuteQuery(sql);
            MessageBox.Show("Successfully Deleted !", "Deleted", MessageBoxButtons.OK, MessageBoxIcon.Information);
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