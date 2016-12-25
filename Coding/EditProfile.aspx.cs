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
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
        }
        protected void txtuserid_TextChanged(object sender, EventArgs e)
        {
            SqlConnection conCustomer;
            string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            conCustomer = new SqlConnection(connStr);
            conCustomer.Open();

            string strRetrieve;
            SqlCommand cmdRetrieve;
            strRetrieve = "Select * from Customer where CusUserID=@cususerid";

            cmdRetrieve = new SqlCommand(strRetrieve, conCustomer);

            cmdRetrieve.Parameters.AddWithValue("@cususerid", txtuserid.Text);
            int n = cmdRetrieve.ExecuteNonQuery();
            SqlDataReader cusinfo;
            cusinfo = cmdRetrieve.ExecuteReader();
            if (cusinfo.HasRows)
            {
                while (cusinfo.Read())
                {
                    txtuserid.Enabled = false;
                    txtcustname.Text = cusinfo["CusName"].ToString();
                    txtcustcontno.Text = cusinfo["CusContNo"].ToString();
                    txtcustemail.Text = cusinfo["CusEmail"].ToString();
                    txtaddress.Text = cusinfo["CusAddress"].ToString();
                }

            }
            else
            {

                txtcustname.Text = "";
                txtcustcontno.Text = "";
                txtcustemail.Text = "";
                txtaddress.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conCustomer;
            string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            conCustomer = new SqlConnection(connStr);
            conCustomer.Open();



            string strInsert;
            SqlCommand cmdInsert;
            strInsert = "UPDATE Customer SET CusPassword = @CP, CusName = @CN , CusContNo = @CCN , CusEmail = @CE , CusAddress = @CA Where CusUserID=@CUID";

            cmdInsert = new SqlCommand(strInsert, conCustomer);

            cmdInsert.Parameters.AddWithValue("@CP", txtPass.Text);
            cmdInsert.Parameters.AddWithValue("@CN", txtcustname.Text);
            cmdInsert.Parameters.AddWithValue("@CCN", txtcustcontno.Text);
            cmdInsert.Parameters.AddWithValue("@CE", txtcustemail.Text);
            cmdInsert.Parameters.AddWithValue("@CA", txtaddress.Text);
            cmdInsert.Parameters.AddWithValue("@CUID", txtuserid.Text);

            int n = cmdInsert.ExecuteNonQuery();

            if (n > 0)
                lblMessage.Text = "info updated";
            else
                lblMessage.Text = "Sorry, update failed.";


            conCustomer.Close();
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtuserid.Enabled = true;
            lblMessage.Text = "";
            txtPass.Text = "";
            txtcustname.Text = "";
            txtcustcontno.Text = "";
            txtcustemail.Text = "";
            txtaddress.Text = "";
        }
    }
}