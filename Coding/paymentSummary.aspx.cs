using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WEBFINAL
{
    public partial class paymentSummary : System.Web.UI.Page
    {
       // double TotalCost = 0.0;
       // String reservationID = "";
        String paymentID = "";
        String receiptnumber = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ////var Name = Request["name"];
            ////var Contact = Request["contact"];
            //var pickuplocation = Request["PickUpLocation"];
            //var destination = Request["Destination"];
            //var tripdate = Request["TripDate"];
            //var Hour = Request["hour"];
            //var Min = Request["min"];
            //var distance = Request["Distance"];
            //var duration = Request["Duration"];

            //if (Request.Cookies["CustUserID"] != null)
            //{
            //    String a = Request.Cookies["CustUserID"].Value;
            //}









            if (rblPaymentMethod.SelectedIndex == 0)
            {
                CCnumberValidation2.ValidationExpression = @"5\d{15}";
                CCnumberValidation2.ErrorMessage = "A valid Master card number should start with 5 and 16 digits";

            }
            else if (rblPaymentMethod.SelectedIndex == 1)
            {
                CCnumberValidation2.ValidationExpression = @"4\d{15}";
                CCnumberValidation2.ErrorMessage = "A valid Visa card number should start with 4 and 16 digits";

            }


            if (Request.Cookies["CustUserID"] != null
                && Request.Cookies["TripDate"] != null && Request.Cookies["hour"] != null
                && Request.Cookies["min"] != null
             && Request.Cookies["PickUpLocation"] != null && Request.Cookies["Destination"] != null
             && Request.Cookies["Distance"] != null && Request.Cookies["Duration"] != null
                && Request.Cookies["TaxiDriverName"] != null
                && Request.Cookies["TaxiDriverCarPlate"] != null && Request.Cookies["TaxiDriverID"] != null
               && Request.Cookies["reservationID"] != null)
            {

                lblTripDate.Text = Request.Cookies["TripDate"].Value;
                lblTripTime.Text = Request.Cookies["hour"].Value + Request.Cookies["min"].Value;
                lblPickUpLocation.Text = Request.Cookies["PickUpLocation"].Value;
                lblDestination.Text = Request.Cookies["Destination"].Value;
                lblTaxiDriver.Text = Request.Cookies["TaxiDriverName"].Value;
                lblDistance.Text = Request.Cookies["Distance"].Value;
                String duration = Request.Cookies["Duration"].Value;


                double distance = double.Parse(Request.Cookies["Distance"].Value);

                double Cost = distance * 5;
                double GstCost = Cost * 0.06;
                double TotalCost = Cost + GstCost;
                lblCost.Text = "RM" + String.Format("{0:0.00}", Cost);
                lblGstCost.Text = "RM" + String.Format("{0:0.00}", GstCost);
                lblTotalAmount.Text = "RM" + String.Format("{0:0.00}", TotalCost);

                HttpCookie cookie10 = new HttpCookie("PaymentMethod", rblPaymentMethod.SelectedValue);
                HttpCookie cookie11 = new HttpCookie("TotalAmount", lblTotalAmount.Text);
                Response.Cookies.Add(cookie10);
                Response.Cookies.Add(cookie11);

            }

            //if (Request.Cookies["CustUserID"] != null)
            //{
            //    lblDestination.Text = Request.Cookies["CustUserID"].Value;}


        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //SqlConnection webconn;
            //string connStr = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            //webconn = new SqlConnection(connStr);
            //webconn.Open();
            //string strSelect;
            //SqlCommand cmdSelect;
            //strSelect = "SELECT TOP 1 ReservationID FROM Reservation ORDER BY ReservationID DESC";

            //cmdSelect = new SqlCommand(strSelect, webconn);
            //object i = cmdSelect.ExecuteScalar();
            //if (i != null)
            //{
            //    String lastRowCode = i.ToString();
            //    String substr = lastRowCode.Substring(2, 5);
            //    int Convertedsubstr = Convert.ToInt32(substr);
            //    int increCode = Convertedsubstr + 1;
            //    String automatedCode = "RS" + String.Format("{0:00000}", increCode);
            //    reservationID = automatedCode;
            //    HttpCookie cookie23 = new HttpCookie("resID", reservationID.ToString());
            //    Response.Cookies.Add(cookie23);
            //}

            //SqlConnection conReservation2;
            //string connStr2 = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            //conReservation2 = new SqlConnection(connStr2);
            //conReservation2.Open();
            //string strInsert2;
            //SqlCommand cmdInsert2;
            //strInsert2 = "SELECT id FROM Reservation ORDER BY ReservationID DESC LIMIT 1";
            //cmdInsert2 = new SqlCommand(strInsert2, conReservation2);
            //int n = cmdInsert2.ExecuteNonQuery();
            //int reservationID = n;

            //if(Request.Cookies["TaxiDriverID"] != null)
            //{ 
            //SqlConnection conReservation;
            //string connStr1 = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            //conReservation = new SqlConnection(connStr1);
            //conReservation.Open();

            //string strInsert1;
            //SqlCommand cmdInsert1;

            //strInsert1 = "Insert Into Reservation (ReservationID,PickUpLocation,Destination,Duration,Date,Time,Distance,DriverID ) Values (@ReservationID,@PickUpLocation,@Destination,@Duration,@Date,@Time,@Distance,@DriverID)";

            //cmdInsert1 = new SqlCommand(strInsert1, conReservation);
            //cmdInsert1.Parameters.AddWithValue("@ReservationID", reservationID.ToString());
            //cmdInsert1.Parameters.AddWithValue("@PickUpLocation", lblPickUpLocation.Text);
            //cmdInsert1.Parameters.AddWithValue("@Destination",lblDestination.Text );
            //cmdInsert1.Parameters.AddWithValue("@Duration", Request.Cookies["Duration"].Value);
            //cmdInsert1.Parameters.AddWithValue("@Date", lblTripDate.Text);
            //cmdInsert1.Parameters.AddWithValue("@Time", lblTripTime.Text);
            //cmdInsert1.Parameters.AddWithValue("@Distance", lblDistance.Text);
            //cmdInsert1.Parameters.AddWithValue("@DriverID", Request.Cookies["TaxiDriverID"].Value);
            //int m = cmdInsert1.ExecuteNonQuery();
            //HttpCookie cookie17 = new HttpCookie("reservationID", reservationID.ToString());
            //Response.Cookies.Add(cookie17);
            //Label1.Text = reservationID.ToString();
            //if (m > 0)
            //{
           

            SqlConnection webconn2;
            string connStr2 = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            webconn2 = new SqlConnection(connStr2);
            webconn2.Open();
            string strSelect2;
            SqlCommand cmdSelect2;
            strSelect2 = "SELECT TOP 1 PaymentID FROM Payment ORDER BY PaymentID DESC";

            cmdSelect2 = new SqlCommand(strSelect2, webconn2);
            object r = cmdSelect2.ExecuteScalar();
            if (r != null)
            {
                String lastRowCode2 = r.ToString();
                String substr2 = lastRowCode2.Substring(2, 5);
                int Convertedsubstr2 = Convert.ToInt32(substr2);
                int increCode2 = Convertedsubstr2 + 1;
                String automatedCode2 = "PM" + String.Format("{0:00000}", increCode2);
                paymentID = automatedCode2;
            }





            SqlConnection webconn4;
            string connStr4 = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            webconn4 = new SqlConnection(connStr2);
            webconn4.Open();
            string strSelect4;
            SqlCommand cmdSelect4;
            strSelect4 = "SELECT TOP 1 ReceiptNumber FROM Payment ORDER BY ReceiptNumber DESC";

            cmdSelect4 = new SqlCommand(strSelect4, webconn4);
            object n = cmdSelect4.ExecuteScalar();
            if (n != null)
            {
                String lastRowCode2 = r.ToString();
                String substr4 = lastRowCode2.Substring(2, 5);
                int Convertedsubstr4 = Convert.ToInt32(substr4);
                int increCode4 = Convertedsubstr4 + 1;
                String automatedCode4 = "RC" + String.Format("{0:00000}", increCode4);
                receiptnumber = automatedCode4;
            }






            SqlConnection conPaymment;
            string connStr3 = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            conPaymment = new SqlConnection(connStr3);
            conPaymment.Open();

            string strInsert3;
            SqlCommand cmdInsert3;
            strInsert3 = "Insert Into Payment (PaymentID,ReceiptNumber,ReservationID,PaymentMethod,TotalAmount,CusUserID,PaymentDate,TripStatus ) Values (@PaymentID,@ReceiptNumber,@ReservationID,@PaymentMethod,@TotalAmount,@CusUserID,@PaymentDate,@TripStatus)";

            cmdInsert3 = new SqlCommand(strInsert3, conPaymment);
            cmdInsert3.Parameters.AddWithValue("@paymentID", paymentID.ToString());
            cmdInsert3.Parameters.AddWithValue("@ReceiptNumber", receiptnumber.ToString());
            cmdInsert3.Parameters.AddWithValue("@ReservationID", Request.Cookies["reservationID"].Value);
            cmdInsert3.Parameters.AddWithValue("@PaymentMethod", rblPaymentMethod.SelectedValue);
            cmdInsert3.Parameters.AddWithValue("@TotalAmount", lblTotalAmount.Text);
            cmdInsert3.Parameters.AddWithValue("@CusUserID", Request.Cookies["CustUserID"].Value);
            cmdInsert3.Parameters.AddWithValue("@PaymentDate", DateTime.Now.ToString());
            cmdInsert3.Parameters.AddWithValue("@TripStatus", "PENDING");
            int p = cmdInsert3.ExecuteNonQuery();
            if (p > 0)
            {
                HttpCookie cookie14 = new HttpCookie("receiptnumber", receiptnumber.ToString());
                HttpCookie cookie15 = new HttpCookie("paymentdatetime", DateTime.Now.ToString());
                //   HttpCookie cookie16 = new HttpCookie("TotalAmount", lblTotalAmount.Text);
                Response.Cookies.Add(cookie14);
                Response.Cookies.Add(cookie15);
                //   Response.Cookies.Add(cookie16);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Make Payment Successfully');window.location ='receipt.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Make Payment UnSuccessfully');", true);
            }


            conPaymment.Close();



            SqlConnection conUpdate;
            string connStr5 = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            conUpdate = new SqlConnection(connStr5);
            conUpdate.Open();

            string strInsert5;
            SqlCommand cmdInsert5;
            strInsert5 = "UPDATE Driver SET Status = @status Where DriverID=@DriverID";

            cmdInsert5 = new SqlCommand(strInsert5, conUpdate);
            cmdInsert5.Parameters.AddWithValue("@status", "UNAVAILABLE");
            cmdInsert5.Parameters.AddWithValue("@DriverID", Request.Cookies["TaxiDriverID"].Value);
            int u = cmdInsert5.ExecuteNonQuery();
            if (u > 0)
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Status changed');", true);

            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Status not changed');", true);

            conUpdate.Close();


            SqlConnection conUpdate2;
            string connStr6 = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            conUpdate2 = new SqlConnection(connStr6);
            conUpdate2.Open();

            string strInsert6;
            SqlCommand cmdInsert6;
            strInsert6 = "UPDATE Reservation SET ReservationStatus = @ReservationStatus Where ReservationID=@ReservationID";

            cmdInsert6 = new SqlCommand(strInsert6, conUpdate2);
            cmdInsert6.Parameters.AddWithValue("@ReservationStatus", "SUCCESSFUL");
            cmdInsert6.Parameters.AddWithValue("@ReservationID", Request.Cookies["reservationID"].Value);
            int s = cmdInsert6.ExecuteNonQuery();
            if (s > 0)
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Status changed');", true);

            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Status not changed');", true);

            conUpdate.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "window.location ='Reservation.aspx';", true);
        }
    }
}