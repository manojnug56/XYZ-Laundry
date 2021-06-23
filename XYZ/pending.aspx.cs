using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XYZ
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cal_fromDate.Visible = false;
                cal_toDate.Visible = false;
            }
        }

        protected void btn_view_Click(object sender, EventArgs e)
        {
            if (txt_fromDate.Text != "" && txt_toDate.Text != "")
            {
                Session["From_Date"] = Convert.ToDateTime(txt_fromDate.Text);
                Session["To_Date"] = Convert.ToDateTime(txt_toDate.Text);

                Response.Redirect("pendingReport.aspx");
            }

            else
            {
                System.Windows.Forms.MessageBox.Show("Please Select date range!");
            }
        }

        protected void cal_fromDate_SelectionChanged(object sender, EventArgs e)
        {
            txt_fromDate.Text = cal_fromDate.SelectedDate.ToShortDateString();
            cal_fromDate.Visible = false;
        }

        protected void cal_toDate_SelectionChanged(object sender, EventArgs e)
        {
            txt_toDate.Text = cal_toDate.SelectedDate.ToShortDateString();
            cal_toDate.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (cal_fromDate.Visible)
            {
                cal_fromDate.Visible = false;
            }

            else
            {
                cal_fromDate.Visible = true;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (cal_toDate.Visible)
            {
                cal_toDate.Visible = false;
            }

            else
            {
                cal_toDate.Visible = true;
            }
        }
    }
}