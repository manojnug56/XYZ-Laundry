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
    public partial class CustomerAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uType"] != null)
            {
                if (Session["uType"].ToString() != "Customer")
                {
                    Response.Redirect("~/Login.aspx");
                }

                else
                {

                }
            }
            if (Session["uType"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        private void clearFields()
        {
            txt_uId.Text = "";
            txt_password.Text = "";
        }

        private void clearFields1()
        {
            txt_adress.Text = "";
            txt_contact.Text = "";
            txt_eMail.Text = "";
            txt_newPassword.Text = "";
            txt_nic.Text = "";
            txt_rePassword.Text = "";
            txt_uName.Text = "";
            lbl_uId.Text = "";
        }

        private bool dataValid()
        {
            if (lbl_uId.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Login first !"); ;
                return false;
            }

            if (txt_newPassword.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("You must enter new password !"); ;
                return false;
            }

            if (txt_newPassword.Text != "")
            {
               if(txt_newPassword.Text != txt_rePassword.Text)
                {
                    System.Windows.Forms.MessageBox.Show("Password Doesn't Match !"); ;
                    return false;
                }
            }

            return true;
        }

        private bool dataValid2()
        {
            if (txt_uId.Text == "")
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

        private DataTable dt;

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            if (dataValid2())
            {
                try
                {
                    
                    User usr = new User();
                    string sql = "SELECT * FROM  tbl_user WHERE id = ' " + txt_uId.Text + "' AND u_password = HashBytes('SHA1', '" + txt_password.Text + "') AND user_type = 'Customer' ";
                    dt = null;
                    dt = usr.getData(sql).Tables[0];

                    if (dt.Rows.Count > 0)
                    {
                        lbl_uId.Text = dt.Rows[0][0].ToString();
                        txt_uName.Text = dt.Rows[0][1].ToString();
                        txt_eMail.Text = dt.Rows[0][2].ToString();
                        txt_nic.Text = dt.Rows[0][5].ToString();
                        txt_adress.Text = dt.Rows[0][6].ToString();
                        txt_contact.Text = dt.Rows[0][7].ToString();
                    }

                    else
                    {
                        System.Windows.Forms.MessageBox.Show("Invalid UserID or Password or Both!", "Invalid", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                        clearFields();
                    }

                    clearFields();
                }

                catch (SqlException ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message);
                }
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (dataValid())
            {
                User usr = new User();

                usr.userId = Convert.ToInt32(lbl_uId.Text);
                usr.uName = txt_uName.Text;
                usr.uMail = txt_eMail.Text;
                usr.uNic = txt_nic.Text;
                usr.uAdress = txt_adress.Text;
                usr.uContact = txt_contact.Text;
                usr.password = txt_newPassword.Text;

                usr.updateUser(usr);
                clearFields();
                clearFields1();
            }
        }
    }
}