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
    public partial class cus_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindDataToDropdown();
            }

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

        // Sql connection
        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        // data bind to dropdown
        private void bindDataToDropdown()
        {
            SqlConnection con = new SqlConnection(cs); // sql connection
            con.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT name FROM tbl_services", con);
            DataSet ds = new DataSet();
            cmd.Fill(ds);
            drp_serviceType.DataSource = ds;
            drp_serviceType.DataTextField = "name"; 
            drp_serviceType.DataBind();

            drp_serviceType.Items.Insert(0, new ListItem("", "")); // blanck first element in dropdown
        }

        private void clearFields() // clear all fields 
        {
            txt_items.Text = "";
            txt_weight.Text = "";
            txt_uId.Text = "";
            drp_serviceType.Items.Clear(); // clear dropdown items
            bindDataToDropdown(); // binda data to dropdown
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

            return true;
        }

        // get service id to virtual text box
        TextBox txt_serviceId = new TextBox(); // Create a text box 
        private void createNewOrder()
        {
            if (dataValid())
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

                        odr.userId = Convert.ToInt32(txt_uId.Text);
                        odr.quantity = Convert.ToInt32(txt_items.Text);
                        odr.weight = Convert.ToDecimal(txt_weight.Text);
                        odr.serviceType = Convert.ToInt32(txt_serviceId.Text);

                        odr.saveOrder(odr);
                        System.Windows.Forms.MessageBox.Show("Order is placed !"); ;
                        clearFields();
                    }
                }

                catch (SqlException ex)
                {
                    System.Windows.Forms.MessageBox.Show(ex.Message);
                }
            }

        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            createNewOrder();
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            clearFields();
        }
    }
}