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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindData();
            }

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

        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        private void bindData()
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT O.id, O.user_id, O.i_quant, S.price, S.name, O.order_date FROM tbl_order O INNER JOIN tbl_services S ON S.id = O.s_type WHERE O.is_pay = 'N' AND O.is_del = 'N' ", con);
            DataSet ds = new DataSet();
            cmd.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        private void clearFields()
        {
            lbl_cusId.Text = "";
            lbl_odrId.Text = "";

            txt_amount.Text = "";
            txt_cost.Text = "";
            txt_qaunt.Text = "";
            txt_service.Text = "";
        }
        private bool dataValid()
        {
            if (lbl_cusId.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Customer Id field is empty"); ;
                return false;
            }

            if (lbl_odrId.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("OrderId field is empty"); ;
                return false;
            }

            if (txt_amount.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Amount field is empty"); ;
                return false;
            }
            return true;
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            lbl_odrId.Text = GridView1.SelectedRow.Cells[0].Text;
            lbl_cusId.Text = GridView1.SelectedRow.Cells[1].Text;
            txt_qaunt.Text = GridView1.SelectedRow.Cells[2].Text;
            txt_cost.Text = GridView1.SelectedRow.Cells[3].Text;
            txt_service.Text = GridView1.SelectedRow.Cells[4].Text;
            txt_amount.Text = (decimal.Parse(txt_cost.Text) * decimal.Parse(txt_qaunt.Text)).ToString();

        }
        protected void btn_cal_Click(object sender, EventArgs e)
        {
            txt_amount.Text = (decimal.Parse(txt_cost.Text) * decimal.Parse(txt_qaunt.Text)).ToString();
        }

        protected void btn_pay_Click(object sender, EventArgs e)
        {
            txt_amount.Text = (decimal.Parse(txt_cost.Text) * decimal.Parse(txt_qaunt.Text)).ToString();

            if(dataValid())
            {
                Payment pmt = new Payment();
                pmt.orderId = Convert.ToInt32(lbl_odrId.Text);
                pmt.netAmount = Convert.ToDecimal(txt_amount.Text);
                pmt.saveOrder(pmt);

                Order odr = new Order();
                odr.orderId = Convert.ToInt32(lbl_odrId.Text);
                odr.updatePaymentStatus(odr);

                bindData();
                clearFields();
            }
        }
    }
}