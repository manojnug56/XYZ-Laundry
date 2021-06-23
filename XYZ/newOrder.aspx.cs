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
    public partial class newServices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindDataToDropdown();
                bindDataToDropdown2();
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
        
        // Sql connection
        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();
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

        private void bindDataToDropdown2()
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT id FROM tbl_user", con);
            DataSet ds = new DataSet();
            cmd.Fill(ds);
            drp_userId.DataSource = ds;
            drp_userId.DataTextField = "id";
            drp_userId.DataBind();

            drp_userId.Items.Insert(0, new ListItem("", ""));
        }

        private void clearFields()
        {
            txt_items.Text = "";
            txt_weight.Text = "";
            drp_serviceType.Items.Clear();
            drp_userId.Items.Clear();

            bindDataToDropdown();
            bindDataToDropdown2();
        }

        private bool dataValid() // validate fields 
        {
            if (txt_items.Text == "") // validate item text box
            {
                System.Windows.Forms.MessageBox.Show("Item field is empty"); ;
                return false;
            }

            if (txt_weight.Text == "") // validate weight text box
            {
                System.Windows.Forms.MessageBox.Show("weight field is empty"); ;
                return false;
            }

            if (drp_serviceType.Text == "") // validate service type text box 
            {
                System.Windows.Forms.MessageBox.Show("Service Type field is empty"); ;
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

                        odr.userId = Convert.ToInt32(drp_userId.Text);
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