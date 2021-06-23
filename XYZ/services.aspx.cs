using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XYZ
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            txt_name.Text = "";
            txt_price.Text = "";
        }

        private bool dataValid()
        {
            if (txt_name.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Name field is empty"); ;
                return false;
            }

            if (txt_price.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Price field is empty"); ;
                return false;
            }

            return true;
        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if(dataValid())
            {
                Services srv = new Services();

                srv.serviceName = txt_name.Text;
                srv.servicePrice = Convert.ToDecimal(txt_price.Text);

                srv.newService(srv);
                System.Windows.Forms.MessageBox.Show("New service is created !"); ;
                clearFields();
            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            clearFields();
        }
    }
}