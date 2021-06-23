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
    public partial class WebForm7 : System.Web.UI.Page
    {
        public static string cs = ConfigurationManager.ConnectionStrings["dbcon"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            bindData();

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

        private void bindData()
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT id, u_name, user_type, reg_date FROM tbl_user", con);
            DataSet ds = new DataSet();
            cmd.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        private DataTable dt;
        private void bindData2()
        {
            User usr = new User();
            string sql= "SELECT u_mail, nic, address, contact FROM tbl_user WHERE id = '"+ lbl_uId.Text +"' ";
            dt = null;
            dt = usr.getData(sql).Tables[0];

            if (dt.Rows.Count > 0)
            {
                txt_eMail.Text = dt.Rows[0][0].ToString();
                txt_nic.Text = dt.Rows[0][1].ToString();
                txt_adress.Text = dt.Rows[0][2].ToString();
                txt_contact.Text = dt.Rows[0][3].ToString();
            }

        }

        private void clearFields()
        {
            lbl_uId.Text = "";
            lbl_uType.Text = "";
            txt_password.Text = "";
            txt_rePassword.Text = "";

            txt_adress.Text = "";
            txt_contact.Text = "";
            txt_eMail.Text = "";
            txt_nic.Text = "";
            txt_uName.Text = "";
        }

        private bool dataValid()
        {
            if (lbl_uId.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("User ID field is empty"); ;
                return false;
            }

            if (lbl_uType.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("User Type field is empty"); ;
                return false;
            }

            if (txt_password.Text != "")
            {
                System.Windows.Forms.MessageBox.Show("You must update your password !"); ;
                return false;
            }
                if (txt_password.Text != "")
            {
                if (txt_password.Text != txt_rePassword.Text)
                {
                    System.Windows.Forms.MessageBox.Show("Password doesn't match !"); ;
                    return false;
                }
            }

            return true;
        }
        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (dataValid())
            {
                User usr = new User();

                usr.userId = Convert.ToInt32(lbl_uId.Text);
                usr.uName = txt_uName.Text;
                usr.uMail = txt_eMail.Text;
                usr.uNic = txt_nic.Text;
                usr.uAdress = txt_adress.Text;
                usr.uContact = txt_contact.Text;
                usr.password = txt_password.Text;

                usr.updateUser(usr);
                clearFields();
                bindData();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbl_uId.Text = GridView1.SelectedRow.Cells[0].Text;
            lbl_uType.Text = GridView1.SelectedRow.Cells[2].Text;
            txt_uName.Text = GridView1.SelectedRow.Cells[1].Text;

            bindData2();
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            System.Windows.Forms.DialogResult dr = System.Windows.Forms.MessageBox.Show("Do you sure to continue ?", "Delete", System.Windows.Forms.MessageBoxButtons.YesNo, System.Windows.Forms.MessageBoxIcon.Question);
            if (dr == System.Windows.Forms.DialogResult.Yes)
            {
                User usr = new User();
                usr.userId = Convert.ToInt32(lbl_uId.Text);
                usr.deleteUser(usr);
                bindData();
            }
        }
    }
}