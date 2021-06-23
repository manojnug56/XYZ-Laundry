using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace XYZ
{
    public partial class invoiceReports : System.Web.UI.Page
    {
        SqlDataAdapter sqlda = new SqlDataAdapter();
        SqlCommand com = new SqlCommand();
        DataTable dt;
        ReportDocument rptDoc = new ReportDocument();

        protected void Page_Load(object sender, EventArgs e)
        {
            printreport();
        }

       public ReportDocument printreport()

       {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
            dt = new DataTable();
            dt.TableName = "invoice";
            com.Connection = conn;
            string sql = @"SELECT O.id, O.user_id, U.u_name, O.i_quant, O.weight, S.name, O.order_date  FROM ((tbl_order O INNER JOIN tbl_user U ON O.user_id = U.id) INNER JOIN tbl_services S ON O.s_type = S.id) 
                            WHERE O.user_id = '"+ Session["User_id"] + "' AND O.is_pay = 'Y' AND O.status = 'P' AND O.is_del = 'N'"; 
            com.CommandText = sql;
            sqlda = new SqlDataAdapter(com);
            sqlda.Fill(dt);

            ReportDocument rptDoc = new ReportDocument();
            rptDoc.Load(Server.MapPath("Invoice.rpt"));
            rptDoc.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = rptDoc;
            return rptDoc;

        }
    }
}