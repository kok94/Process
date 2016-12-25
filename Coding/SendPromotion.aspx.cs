using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;
using System.Data.SqlClient;
namespace WEBFINAL
{
    public partial class SendPromotion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conCustomer;
            string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            conCustomer = new SqlConnection(connStr);
            conCustomer.Open();


            string strSelect;
            SqlCommand cmdSelect;
            strSelect = "Select CusEmail,CusUserID from Customer";
            cmdSelect = new SqlCommand(strSelect, conCustomer);
            SqlDataReader dtr;
            dtr = cmdSelect.ExecuteReader();
            if (dtr.HasRows)
            {

                while (dtr.Read())
                {

                    txtCheck.Text += dtr["CusEmail"].ToString() + " , ";
                    lblCustId.Text += dtr["CusUserID"].ToString() + " ";

                }



            }

            string Check = txtCheck.Text;
            Check = Check.Remove(Check.Length - 2);
            txtCheck.Text = Check;

            conCustomer.Close();
            dtr.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage Msg = new MailMessage();
            Msg.From = new MailAddress("easycab1996@gmail.com");
            string password = "easycab123";


            String body;

            //5.Prepare GMAIL SMTP: with SSL on port 587
            var smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new System.Net.NetworkCredential(Msg.From.Address, password),
                Timeout = 30000

            };


            //6.Complete the message and SEND the email:
            using (var message = new MailMessage()
            {
                From = Msg.From,
                Subject = TextBox2.Text,
                Body = txtMsg.Text,
            })
            {
                message.To.Add(txtCheck.Text);

                smtp.Send(message);
                Response.Write("<script>alert('Email has been Send!')</script>");
            }





        }

    }
}