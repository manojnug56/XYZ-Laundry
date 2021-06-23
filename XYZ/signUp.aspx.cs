using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XYZ
{
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void clearFields()
        {
            txt_userName.Text = "";
            txt_email.Text = "";
            txt_password.Text = "";
            txt_rePassword.Text = "";
        }

        private bool dataValid()
        {
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
                usr.uType = "Customer";
                usr.password = txt_password.Text;
                
                usr.saveUser(usr);
                clearFields();
            }
        }
    }
}