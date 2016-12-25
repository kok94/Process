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
    public partial class LoginPage_Driver_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from Driver where DriverID ='" + userid.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select DriverPassword from Driver where DriverID='" + userid.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string passw = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (passw == userpass.Text)
                {
                    Session["New"] = userpass.Text;
                    HttpCookie cookie20 = new HttpCookie("TaxiDriverID", userid.Text);
                    Response.Cookies.Add(cookie20);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Welcome to the EzCAb !!');window.location ='DriverHomePage.aspx';", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password Incorrect Please insert again !!');window.location ='LoginPage(Driver).aspx';", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User ID is Incorrect Please insert again !!');window.location ='LoginPage(Driver).aspx';", true);
            }
        }
    }
}