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
    public partial class AddDriver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtPass.Attributes["type"] = "password";
            txtPassword.Attributes["type"] = "password";
            SqlConnection conBook;
            string connStr = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            conBook = new SqlConnection(connStr);
            conBook.Open();

            /*Step 2: Create Sql Insert statement and Sql Insert Object*/
            string strSelect;
            SqlCommand cmdSelect;
            strSelect = "SELECT TOP 1 DriverID FROM Driver ORDER BY DriverID DESC";

            cmdSelect = new SqlCommand(strSelect, conBook);
            object i = cmdSelect.ExecuteScalar();
            if (i != null)
            {
                String lastRowCode = i.ToString();
                String substr = lastRowCode.Substring(2, 3);
                int Convertedsubstr = Convert.ToInt32(substr);
                int increCode = Convertedsubstr + 1;
                String automatedCode = "DR" + String.Format("{0:000}", increCode);
                txtDriverID.Text = automatedCode;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string messageIC;
            string MssagePhone;
            string platenumber;

            SqlConnection conBook;
            string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            conBook = new SqlConnection(connStr);
            conBook.Open();


            try
            {
                Double IC = Double.Parse(txtDriverIC.Text);


                //}

                try
                {
                    Double Contact = Double.Parse(txtContactNumber.Text);



                    /*Step 2: Create Sql Insert statement and Sql Insert Object*/
                    string strInsert;
                    SqlCommand cmdInsert;
                    strInsert = "Insert Into Driver (DriverID , DriverName, DriverIC, TaxiCompany, ExpiredCarLicenseDate, ContactNumber, CarPlateNumber , Status , DriverPassword) Values (@DriverID, @DriverName, @DriverIC,@TaxiCompany, @ExpiredCarLicense  ,@ContactNumber,@CarPlateNumber , @Status , @DriverPassword )";

                    cmdInsert = new SqlCommand(strInsert, conBook);

                    cmdInsert.Parameters.AddWithValue("@DriverID", txtDriverID.Text);
                    cmdInsert.Parameters.AddWithValue("@DriverName", txtDriverName.Text);
                    cmdInsert.Parameters.AddWithValue("@DriverIC", txtDriverIC.Text);
                    cmdInsert.Parameters.AddWithValue("@TaxiCompany", txtCompanyName.Text);
                    cmdInsert.Parameters.AddWithValue("@ExpiredCarLicense", txtcal.Text);
                    cmdInsert.Parameters.AddWithValue("@ContactNumber", txtContactNumber.Text);
                    cmdInsert.Parameters.AddWithValue("@CarPlateNumber", txtCarPlateNumber.Text);
                    cmdInsert.Parameters.AddWithValue("@Status", txtStatus.Text);
                    cmdInsert.Parameters.AddWithValue("@DriverPassword", txtPass.Text);

                    /*Step 3: Execute command to insert*/
                    int n = cmdInsert.ExecuteNonQuery();






                    if (n > 0)
                    {
                        Response.Write("<script>alert('New Driver details has been added!')</script>");
                        Server.Transfer("RetrieveDriver.aspx");
                    }

                    else
                    {
                        Response.Write("<script>alert('Ops! Unable to insert record!')</script>");
                        /*Step 4: Close database connection*/
                        conBook.Close();
                    }


                }
                catch (Exception ex)
                {
                    MssagePhone = "Phone Number cannot contain alphabetic. " + ex.Message;

                    lblcontact.Text = MssagePhone;
                    lblcontact.Visible = true;
                }
            }
            catch (Exception ex)
            {
                messageIC = "IC cannot contain alphabetic ." + ex.Message;

                lblDisplay.Text = messageIC;
                lblDisplay.Visible = true;

            }
        }



        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtcal.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtDriverName.Text = "";
            txtDriverIC.Text = "";
            txtcal.Text = "";
            txtContactNumber.Text = "";
            txtCarPlateNumber.Text = "";
        }

        protected void txtDriverIC_TextChanged(object sender, EventArgs e)
        {

        }
    }
}