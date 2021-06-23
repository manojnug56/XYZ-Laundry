using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace XYZ
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        private void clearFields()
        {
            txt_userName.Text = "";
            txt_password.Text = "";
        }

        private bool dataValid()
        {
            if (txt_userName.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("User Id field is empty"); ;
                return false;
            }

            if (txt_password.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Password field is empty"); ;
                return false;
            }

            return true;
        }
        protected void btn_login_Click(object sender, EventArgs e)
        {
            
            if (dataValid())
            {
                try
                {
                    SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM  tbl_user WHERE id = ' " + txt_userName.Text + "' AND u_password = HashBytes('SHA1', '" + txt_password.Text + "')", cs);
                    DataTable dt = new DataTable(); //this is creating a virtual table  
                    sda.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        Session["uType"] = dt.Rows[0][4].ToString();

                        if (dt.Rows[0][4].ToString() == "Admin")
                        {
                            Response.Redirect("~/index.aspx");   
                        }

                        else if (dt.Rows[0][4].ToString() == "Customer")
                        {
                            Response.Redirect("~/Customer.aspx");

                            Session["uId"] = dt.Rows[0][0].ToString();
                        }
                    }

                    else
                    {
                        System.Windows.Forms.MessageBox.Show("Invalid UserID or Password or Both!", "Invalid", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                        Response.Redirect("Login.aspx");
                    }

                    clearFields();
                }

                catch (SqlException ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message);
                }
            }

        }
    }
}