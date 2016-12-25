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
    public partial class ChooseTaxi : System.Web.UI.Page
    {
        String reservationID = "";
        string driverID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["CusName"] != null && Request.Cookies["CusContNo"] != null)
            {
                lblName.Text = Request.Cookies["CusName"].Value;
                lblContactNum.Text = Request.Cookies["CusContNo"].Value;
            }

            String Name = Request["name"];
            String PickUp = Request["PickUpLocation"];
            String Destination = Request["Destination"];
            String Date = Request["TripDate"];
            String Hour = Request["hour"];
            String Min = Request["min"];
            String Distance = Request["Distance"];
            String TimeNeeded = Request["Duration"];
            String customerID = Request["CustomerID"];

            //lblName.Text = Name.ToString();
            lblPickUpAdd.Text = PickUp;
            lblDestination.Text = Destination;
            lblDate.Text = Date;
            lblTime.Text = "" + Hour + ":" + Min;
            lblDistance.Text = Distance;
            lblTimeNeeded.Text = TimeNeeded;

        }


        protected void gridViewChooseTaxi_SelectedIndexChanged(object sender, EventArgs e)
        {
            string driverName = gridViewChooseTaxi.SelectedRow.Cells[1].Text;
            string driverID = gridViewChooseTaxi.SelectedRow.Cells[2].Text;
            string carPlateNumber = gridViewChooseTaxi.SelectedRow.Cells[3].Text;

            lblDriver.Text = driverName;
            lblCarPlate.Text = carPlateNumber;
            Label1.Text = driverID;
            HttpCookie cookie9 = new HttpCookie("TaxiDriverName", driverName);
            HttpCookie cookie10 = new HttpCookie("TaxiDriverCarPlate", carPlateNumber);
            HttpCookie cookie13 = new HttpCookie("TaxiDriverID", driverID);
            Response.Cookies.Add(cookie9);
            Response.Cookies.Add(cookie10);
            Response.Cookies.Add(cookie13);
        }

        protected void btnBackToReservation_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservation.aspx");



            //Response.Redirect("~/paymentSummary.aspx?TaxiDriverID=" + lblDriver.Text +
            //    "&TaxiDriverCarPlate=" + lblCarPlate.Text);
        }

        protected void btnProceedToPayment_Click(object sender, EventArgs e)
        {
            if (lblDriver.Text == "" && lblCarPlate.Text == "")
            {
                Response.Write("<script>alert('Please select a taxi driver');</script>");
            }
            else
            {
                //}
                //HttpCookie cookie9 = new HttpCookie("TaxiDriverName", lblDriver.Text);
                //Response.Cookies.Add(cookie9);
                SqlConnection webconn;
                string connStr = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
                webconn = new SqlConnection(connStr);
                webconn.Open();
                string strSelect;
                SqlCommand cmdSelect;
                strSelect = "SELECT TOP 1 ReservationID FROM Reservation ORDER BY ReservationID DESC";

                cmdSelect = new SqlCommand(strSelect, webconn);
                object i = cmdSelect.ExecuteScalar();
                if (i != null)
                {
                    String lastRowCode = i.ToString();
                    String substr = lastRowCode.Substring(2, 5);
                    int Convertedsubstr = Convert.ToInt32(substr);
                    int increCode = Convertedsubstr + 1;
                    String automatedCode = "RS" + String.Format("{0:00000}", increCode);
                    reservationID = automatedCode;
                    //HttpCookie cookie23 = new HttpCookie("resID", reservationID.ToString());
                    //Response.Cookies.Add(cookie23);
                    SqlConnection conReservation;
                    string connStr1 = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
                    conReservation = new SqlConnection(connStr1);
                    conReservation.Open();

                    string strInsert1;
                    SqlCommand cmdInsert1;

                    strInsert1 = "Insert Into Reservation (ReservationID,PickUpLocation,Destination,Duration,Date,Time,Distance,DriverID,ReservationStatus ) Values (@ReservationID,@PickUpLocation,@Destination,@Duration,@Date,@Time,@Distance,@DriverID,@ReservationStatus)";

                    cmdInsert1 = new SqlCommand(strInsert1, conReservation);
                    cmdInsert1.Parameters.AddWithValue("@ReservationID", reservationID.ToString());
                    cmdInsert1.Parameters.AddWithValue("@PickUpLocation", lblPickUpAdd.Text);
                    cmdInsert1.Parameters.AddWithValue("@Destination", lblDestination.Text);
                    cmdInsert1.Parameters.AddWithValue("@Duration", lblTimeNeeded.Text);
                    cmdInsert1.Parameters.AddWithValue("@Date", lblDate.Text);
                    cmdInsert1.Parameters.AddWithValue("@Time", lblTime.Text);
                    cmdInsert1.Parameters.AddWithValue("@Distance", lblDistance.Text);
                    cmdInsert1.Parameters.AddWithValue("@DriverID", Request.Cookies["TaxiDriverID"].Value);
                    cmdInsert1.Parameters.AddWithValue("@ReservationStatus", "PENDING");
                    int m = cmdInsert1.ExecuteNonQuery();
                    HttpCookie cookie17 = new HttpCookie("reservationID", reservationID.ToString());
                    Response.Cookies.Add(cookie17);
                    if (m > 0)
                    {
                        Response.Redirect("paymentSummary.aspx");
                    }

                }
            }


        }
    }
}