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
    public partial class LoginPage_Customer_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from Customer where CusUserID ='" + userid.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select CusPassword from Customer where CusUserID='" + userid.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string passw = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (passw == userpass.Text)
                {
                    //SqlDataReader dtr;
                    //dtr = passComm.ExecuteReader();
                    //if (dtr.HasRows)
                    //{
                    //    while (dtr.Read())
                    //    {
                    //        String name = "";
                    //        String contact = "";

                    //        name = dtr["CusName"].ToString();
                    //        contact = dtr["CustContNo"].ToString();
                    //        HttpCookie cookie21 = new HttpCookie("CusName", name);
                    //        HttpCookie cookie22 = new HttpCookie("CustContNo", contact);
                    //    }

                    //}
                    SqlConnection conCustomer;
                    string connStr = ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString;
                    conCustomer = new SqlConnection(connStr);
                    conCustomer.Open();

                    string strRetrieve;
                    SqlCommand cmdRetrieve;
                    strRetrieve = "Select * from Customer where CusUserID=@CustomerID";

                    cmdRetrieve = new SqlCommand(strRetrieve, conCustomer);

                    cmdRetrieve.Parameters.AddWithValue("@CustomerID", userid.Text);
                    int n = cmdRetrieve.ExecuteNonQuery();
                    SqlDataReader dtr;
                    dtr = cmdRetrieve.ExecuteReader();
                    if (dtr.HasRows)
                    {
                        while (dtr.Read())
                        {

                            String name = "";
                            String contact = "";

                            name = dtr["CusName"].ToString();
                            contact = dtr["CusContNo"].ToString();
                            HttpCookie cookie21 = new HttpCookie("CusName", name);
                            HttpCookie cookie22 = new HttpCookie("CusContNo", contact);
                            Response.Cookies.Add(cookie21);
                            Response.Cookies.Add(cookie22);



                        }

                    }


                    conCustomer.Close();
                    dtr.Close();

                    Session["New"] = userpass.Text;
                    HttpCookie cookie1 = new HttpCookie("CustUserID", userid.Text);
                    Response.Cookies.Add(cookie1);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Welcome to the EzCAb !!');window.location ='CustomerHomePage.aspx';", true);
                    //  Response.Redirect("~/reservation.aspx?CustomerID=" + userid.Text);


                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password Incorrect Please insert again !!');window.location ='LoginPage(Customer).aspx';", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User ID is Incorrect Please insert again !!');window.location ='LoginPage(Customer).aspx';", true);
            }

        }
    }
}