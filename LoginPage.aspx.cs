﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WEBFINAL
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebConn"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from Staff where StaffUserID ='" + userid.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select Password from Staff where StaffUserID='" + userid.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string passw = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (passw == userpass.Text)
                {
                    Session["New"] = userpass.Text;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Welcome to the EzCAb !!');window.location ='StaffHomePage.aspx';", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password Incorrect Please insert again !!');window.location ='LoginPage.aspx';", true);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User ID is Incorrect Please insert again !!');window.location ='LoginPage.aspx';", true);
            }



        }
    }
}