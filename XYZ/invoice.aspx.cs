using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace XYZ
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        
        protected void btn_sign_Click(object sender, EventArgs e)
        {
            if (txt_userId.Text != "")
            {
                Session["User_id"] = Convert.ToInt32(txt_userId.Text);

                Response.Redirect("invoiceReports.aspx");
            }

            else
            {
                System.Windows.Forms.MessageBox.Show("Please Enter User ID!");
            }
        }
    }
}