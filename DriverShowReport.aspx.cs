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
    public partial class DriverShowReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/DriverReport.rdlc");
                DriverDataSet dsDriver = GetData("select * from Driver");
                ReportDataSource datasource = new ReportDataSource("DataSet1", dsDriver.Tables[1]);
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(datasource);
            }
        }

        private DriverDataSet GetData(string query)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;

                    sda.SelectCommand = cmd;
                    using (DriverDataSet dsDriver = new DriverDataSet())
                    {
                        sda.Fill(dsDriver, "DataTable1");
                        return dsDriver;
                    }
                }
            }
        }
    }
}