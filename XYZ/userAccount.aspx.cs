using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XYZ
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            drp_uType.Items.Insert(0, new ListItem("", ""));

            if (Session["uType"] != null)
            {
                if (Session["uType"].ToString() != "Admin")
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

        private void clearFields()
        {
            txt_userName.Text = "";
            txt_email.Text = "";
            txt_password.Text = "";
            txt_rePassword.Text = "";
            drp_uType.Items.Insert(0, new ListItem("", ""));
        }

        private bool dataValid()
        {
            if (drp_uType.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("User Type field is empty"); ;
                return false;
            }

            if (txt_userName.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("User name field is empty"); ;
                return false;
            }

            if (txt_email.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Email field is empty"); ;
                return false;
            }

            if (txt_password.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Password field is empty"); ;
                return false;
            }

            if (txt_rePassword.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Please confirm your password !"); ;
                return false;
            }

            if (txt_password.Text != txt_rePassword.Text)
            {
                System.Windows.Forms.MessageBox.Show("Password doesn't match !"); ;
                return false;
            }

            return true;
        }
        protected void btn_sign_Click(object sender, EventArgs e)
        {
            if (dataValid())
            {
                User usr = new User();

                usr.uName = txt_userName.Text;
                usr.uMail = txt_email.Text;
                usr.uType = drp_uType.Text;
                usr.password = txt_password.Text;

                usr.saveUser(usr);
                clearFields();
            }
        }
    }
}