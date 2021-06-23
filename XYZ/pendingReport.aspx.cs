using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;

namespace XYZ
{
    public partial class pendingReport : System.Web.UI.Page
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
            dt.TableName = "sale";
            com.Connection = conn;
            string sql = @"SELECT O.id, O.user_id, O.i_quant, S.name FROM tbl_order O INNER JOIN tbl_services S ON O.s_type = S.id 
                        WHERE O.order_date >= '" + Session["From_Date"] + "' AND O.order_date <= '" + Session["To_Date"] + "' " +
                        "AND O.is_del = 'N' AND O.status = 'P' ORDER BY O.id";
            com.CommandText = sql;
            sqlda = new SqlDataAdapter(com);
            sqlda.Fill(dt);

            ReportDocument rptDoc = new ReportDocument();
            rptDoc.Load(Server.MapPath("pending.rpt"));
            rptDoc.SetDataSource(dt);
            CrystalReportViewer1.ReportSource = rptDoc;
            return rptDoc;

        }
    }
}