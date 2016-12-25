using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WAD
{
    public partial class UpdateDriver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conCustomer;
            string connStr = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            conCustomer = new SqlConnection(connStr);
            conCustomer.Open();

            string strRetrieve;
            SqlCommand cmdRetrieve;
            strRetrieve = "Select * from Driver where DriverID=@DriverID";

            cmdRetrieve = new SqlCommand(strRetrieve, conCustomer);

            cmdRetrieve.Parameters.AddWithValue("@DriverID", DropDownList1.SelectedValue);
            int n = cmdRetrieve.ExecuteNonQuery();
            SqlDataReader dtr;
            dtr = cmdRetrieve.ExecuteReader();
            if (dtr.HasRows)
            {
                while (dtr.Read())
                {
                    txtDriverID.Text = dtr["DriverID"].ToString();
                    txtDriverName.Text = dtr["DriverName"].ToString();
                    txtDriverIC.Text = dtr["DriverIC"].ToString();
                    txtExpiredCarLicense.Text = dtr["ExpiredCarLicenseDate"].ToString();
                    txtContactNumber.Text = dtr["ContactNumber"].ToString();
                    txtCarPlateNumber.Text = dtr["CarPlateNumber"].ToString();
                }

            }
            else
            {
                txtDriverName.Text = "";
                txtDriverIC.Text = "";
                txtExpiredCarLicense.Text = "";
                txtContactNumber.Text = "";
                txtCarPlateNumber.Text = "";
            }

            conCustomer.Close();
            dtr.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            /*Step 1: Create and Open Connection*/
            SqlConnection conCustomers;
            string connStr = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
            conCustomers = new SqlConnection(connStr);
            conCustomers.Open();

            /*Step 2: Create Sql Insert statement and Sql Insert Object*/
            string strUpdate;
            SqlCommand cmdInsert1;
            strUpdate = "Update Driver SET DriverID=@DriverID, DriverName=@DriverName, DriverIC=@DriverIc, ExpiredCarLicenseDate=@ExpiredCarLicenseDate, ContactNumber=@ContactNumber, CarPlateNumber=@CarPlateNumber  Where DriverID = @DriverID";

            cmdInsert1 = new SqlCommand(strUpdate, conCustomers);

            cmdInsert1.Parameters.AddWithValue("@DriverID", txtDriverID.Text);
            cmdInsert1.Parameters.AddWithValue("@DriverName", txtDriverName.Text);
            cmdInsert1.Parameters.AddWithValue("@DriverIC", txtDriverIC.Text);
            cmdInsert1.Parameters.AddWithValue("@ExpiredCarLicenseDate", txtExpiredCarLicense.Text);
            cmdInsert1.Parameters.AddWithValue("@ContactNumber", txtContactNumber.Text);
            cmdInsert1.Parameters.AddWithValue("@CarPlateNumber", txtCarPlateNumber.Text);
            /*Step 3: Execute command to insert*/
            int n = cmdInsert1.ExecuteNonQuery();

            if (n > 0)
            {
                Response.Write("<script>alert('Driver details has been Update!')</script>");
                Server.Transfer("UpdateDriver.aspx");
            }

            else
            {
                Response.Write("<script>alert('Ops! Unable to update record!')</script>");
                /*Step 4: Close database connection*/
                conCustomers.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}