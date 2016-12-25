using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

namespace WEBFINAL
{
    public partial class PaymentReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/paymentrepot.rdlc");
                Payment dsPayment = GetData("select * from Payment");
                ReportDataSource datasource = new ReportDataSource("DataSet", dsPayment.Tables[1]);
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(datasource);
            }
        }

        private Payment GetData(string query)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;

                    sda.SelectCommand = cmd;
                    using (Payment dsPayment = new Payment())
                    {
                        sda.Fill(dsPayment, "DataTable1");
                        return dsPayment;
                    }
                }
            }
        }
    }
}