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
    public partial class Customer_orderTrace : System.Web.UI.Page
    {
        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        private void bindData()
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT O.id, O.i_quant, S.name, O.status, S.price, P.amount, O.order_date FROM ((tbl_order O INNER JOIN tbl_services S ON S.id = O.s_type) INNER JOIN tbL_payment P ON O.id = P.order_id) WHERE O.is_del = 'N' AND O.user_id = '" +txt_uId.Text+ "' ", con);
            DataSet ds = new DataSet();
            cmd.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        private void clearFields()
        {
            txt_uId.Text = "";
        }
        private bool dataValid()
        {
            if (txt_uId.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("User Id field is empty"); ;
                return false;
            }
            
            return true;
        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            if(dataValid())
            {
                bindData();
            }
        }
    }
}