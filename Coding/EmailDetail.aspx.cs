using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;
using System.Data.SqlClient;

namespace WEBFINAL
{
    public partial class EmailDetail : System.Web.UI.Page
    {
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            //Check ID



            if (Request.Cookies["TaxiDriverID"] != null)
            {
                id = Request.Cookies["TaxiDriverID"].Value;
                txtDriverID.Text = id;

            }


            HttpCookie myDriverID = new HttpCookie("DriverID");


            Response.Cookies.Add(myDriverID);


            if (Request.Cookies["DriverID"] != null)
            {
                string ID = Request.Cookies["DriverID"].Value;

            }
            else
            {

            }


            //auto email
            SqlConnection conCustomer;
            string connStr = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            conCustomer = new SqlConnection(connStr);
            conCustomer.Open();


            string strSelect;
            SqlCommand cmdSelect;
            strSelect = "Select [Customer].CusEmail FROM Customer INNER JOIN Payment ON Customer.CusUserID = Payment.CusUserID INNER JOIN Reservation ON Payment.ReservationID = Reservation.ReservationID INNER JOIN Driver ON Reservation.DriverID = Driver.DriverID WHERE [DRIVER].DriverID =@DriverID ";
            cmdSelect = new SqlCommand(strSelect, conCustomer);
            SqlDataReader dtr;
            cmdSelect.Parameters.AddWithValue("@DriverID", txtDriverID.Text);
            dtr = cmdSelect.ExecuteReader();
            if (dtr.HasRows)
            {

                while (dtr.Read())
                {

                    txtTo.Text = dtr["CusEmail"].ToString();

                }


                MailMessage Msg = new MailMessage();
                Msg.From = new MailAddress("easycab1996@gmail.com");
                string password = "easycab123";
                //Msg.To.Add();


                Msg.To.Add(txtTo.Text);
            }




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("easycab1996@gmail.com");
            msg.To.Add(txtTo.Text);
            msg.Subject = txtTitle.Text;
            msg.Body = txtMsg.Text;
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            System.Net.NetworkCredential NewworkCred = new System.Net.NetworkCredential();
            NewworkCred.UserName = "easycab1996@gmail.com";
            NewworkCred.Password = "easycab123";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NewworkCred;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(msg);


            Response.Write("<script>alert('Email has been Send!')</script>");


        }

        protected void txtTitle_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtTo_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {

        }
    }
}