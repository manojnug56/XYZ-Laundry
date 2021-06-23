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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        private  void bindData()
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT O.id, O.user_id, O.i_quant, O.weight, S.name, O.order_date FROM tbl_order O INNER JOIN tbl_services S ON S.id = O.s_type WHERE O.is_pay = 'N' AND O.is_del = 'N' ", con);
            DataSet ds = new DataSet();
            cmd.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        private void bindDataToDropdown()
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT name FROM tbl_services", con);
            DataSet ds = new DataSet();
            cmd.Fill(ds);
            drp_serviceType.DataSource = ds;
            drp_serviceType.DataTextField = "name";
            drp_serviceType.DataBind();

            drp_serviceType.Items.Insert(0, new ListItem("", ""));
        }

        private void clearFields()
        {
            txt_items.Text = "";
            txt_weight.Text = "";
            drp_serviceType.Items.Clear();
            lbl_oId.Text = "";
            lbl_uId.Text = "";
            bindDataToDropdown();
        }

        private bool dataValid()
        {
            if (txt_items.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Item field is empty"); ;
                return false;
            }

            if (txt_weight.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("weight field is empty"); ;
                return false;
            }

            if (lbl_oId.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Order Id field is empty"); ;
                return false;
            }

            if (lbl_uId.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("User Id field is empty"); ;
                return false;
            }

            if (drp_serviceType.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Service Type field is empty"); ;
                return false;
            }

            return true;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindData();
                bindDataToDropdown();
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            lbl_oId.Text = GridView1.SelectedRow.Cells[0].Text;
            lbl_uId.Text = GridView1.SelectedRow.Cells[1].Text;
            txt_items.Text = GridView1.SelectedRow.Cells[2].Text;
            txt_weight.Text = GridView1.SelectedRow.Cells[3].Text;
            drp_serviceType.Text = GridView1.SelectedRow.Cells[4].Text;
            
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            if(dataValid())
            {
                System.Windows.Forms.DialogResult dr = System.Windows.Forms.MessageBox.Show("Do you sure to continue ?", "Delete", System.Windows.Forms.MessageBoxButtons.YesNo, System.Windows.Forms.MessageBoxIcon.Question);
                if (dr == System.Windows.Forms.DialogResult.Yes)
                {
                    Order odr = new Order();
                    odr.orderId = Convert.ToInt32(lbl_oId.Text);
                    odr.deleteOrder(odr);

                    bindData();
                    clearFields();
                }
            }
        }

        // get service id to virtual text box
        TextBox txt_serviceId = new TextBox(); // Create a text box 
        protected void btn_update_Click(object sender, EventArgs e)
        {
            if(dataValid())
            {
                try
                {
                    SqlConnection con = new SqlConnection(cs);
                    con.Open();
                    string sql1 = " SELECT * FROM tbl_services WHERE name = '" + drp_serviceType.Text + "' ";
                    SqlCommand cmd = new SqlCommand(sql1, con);
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        int id = dr.GetInt32(0);
                        txt_serviceId.Text = id.ToString(); // Get row value to text box 

                        Order odr = new Order();
                        odr.orderId = Convert.ToInt32(lbl_oId.Text);
                        odr.quantity = Convert.ToInt32(txt_items.Text);
                        odr.weight = Convert.ToDecimal(txt_weight.Text);
                        odr.serviceType = Convert.ToInt32(txt_serviceId.Text);

                        odr.updateOrder(odr);

                        bindData();
                        clearFields();
                    }
                }

                catch (SqlException ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message);
                }
            }
        }
    }
}