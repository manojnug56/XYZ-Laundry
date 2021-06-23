using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace XYZ
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            bindData();
        }

        private void bindData()
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT id, user_id, status, order_date FROM tbl_order  WHERE is_del = 'N' ", con);
            DataSet ds = new DataSet();
            cmd.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        private void clearFields()
        {
            txt_oNum.Text = "";
            txt_status.Text = "";
            txt_userId.Text = "";
        }
        private bool dataValid()
        {
            if (txt_oNum.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Order Number field is empty"); ;
                return false;
            }
            
            if (txt_userId.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("User Id field is empty"); ;
                return false;
            }

            if (txt_status.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Status is empty"); ;
                return false;
            }
            return true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_oNum.Text = GridView1.SelectedRow.Cells[0].Text;
            txt_userId.Text = GridView1.SelectedRow.Cells[1].Text;

            if(GridView1.SelectedRow.Cells[2].Text == "P")
            {
                txt_status.Text = "Pending";
            }

            else
            {
                txt_status.Text = "Finished";
            }
        }

        protected void btn_status_Click(object sender, EventArgs e)
        {
            if(dataValid())
            {
                Order odr = new Order();
                odr.orderId = Convert.ToInt32(txt_oNum.Text);
                odr.orderStatus(odr);

                bindData();
                clearFields();
            }
        }
    }
}