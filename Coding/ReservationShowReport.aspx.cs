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
    public partial class ReservationShowReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/ReservationReport.rdlc");
                ReservationDataSet dsReservation = GetData("select * from Reservation");
                ReportDataSource datasource = new ReportDataSource("DataSet1", dsReservation.Tables[1]);
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(datasource);
            }
        }

        private ReservationDataSet GetData(string query)
        {
            string conString = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            SqlCommand cmd = new SqlCommand(query);
            using (SqlConnection con = new SqlConnection(conString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;

                    sda.SelectCommand = cmd;
                    using (ReservationDataSet dsReservation = new ReservationDataSet())
                    {
                        sda.Fill(dsReservation, "DataTable1");
                        return dsReservation;
                    }
                }
            }
        }
    }
}