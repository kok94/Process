using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

namespace WEBFINAL
{
    public partial class DriverNotification : System.Web.UI.Page
    {
        string iStatus = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["TaxiDriverID"] != null)
            {
                id = Request.Cookies["TaxiDriverID"].Value;
                txtDriverId.Text = id;

            }

            HttpCookie myStt = new HttpCookie("Status");
            HttpCookie myDriverID = new HttpCookie("DriverID");
            HttpCookie myEmailAddress = new HttpCookie("Email");
            Response.Cookies.Add(myStt);
            Response.Cookies.Add(myDriverID);
            Response.Cookies.Add(myEmailAddress);
            if (Request.Cookies["Status"] != null)
            {
                string iStatus = Request.Cookies["Status"].Value;

            }
            else
            {

            }
            Response.Cookies.Add(myDriverID);
            if (Request.Cookies["DriverID"] != null)
            {
                string ID = Request.Cookies["DriverID"].Value;

            }
            else
            {

            }

        }



        protected void btnSend_Click(object sender, EventArgs e)
        {
            Server.Transfer("EmailDetail.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            SqlConnection conCustomers2;
            string connStr2 = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            conCustomers2 = new SqlConnection(connStr2);
            conCustomers2.Open();

            /*Step 2: Create Sql Insert statement and Sql Insert Object*/
            string strUpdate2;
            SqlCommand cmdInsert2;
            strUpdate2 = "Update Payment SET [Payment].TripStatus='FINISHED' FROM [Payment] INNER JOIN [Reservation] ON [Payment].ReservationID= [Reservation].ReservationID WHERE [RESERVATION].DriverID = @DriverID";

            cmdInsert2 = new SqlCommand(strUpdate2, conCustomers2);
            cmdInsert2.Parameters.AddWithValue("@DriverID", txtDriverId.Text);
            //cmdInsert1.Parameters.AddWithValue("@Status", Request.Cookies["Status"].Value);


            /*Step 3: Execute command to insert*/
            int m = cmdInsert2.ExecuteNonQuery();

            if (m > 0)
            {
                // Response.Write("<script>alert('Trip Status Changed!')</script>");
            }

            else
            {
                Response.Write("<script>alert('Ops! Trip Status not changed')</script>");

            }
            conCustomers2.Close();



            SqlConnection conCustomers;
            string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            conCustomers = new SqlConnection(connStr);
            conCustomers.Open();

            string strUpdate;
            SqlCommand cmdInsert1;
            strUpdate = "Update Driver SET Status='AVAILABLE' Where DriverID = @DriverID";

            cmdInsert1 = new SqlCommand(strUpdate, conCustomers);
            cmdInsert1.Parameters.AddWithValue("@DriverID", txtDriverId.Text);


            int n = cmdInsert1.ExecuteNonQuery();

            if (n > 0)
            {
                Response.Write("<script>alert('Driver Status has been Update!')</script>");
            }

            else
            {
                Response.Write("<script>alert('Ops! Unable to update record!')</script>");
                conCustomers.Close();
            }

        }
    }
}