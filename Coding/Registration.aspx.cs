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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {




            SqlDataReader reader = null;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Customer where CusUserID=@cususerid", conn);
            cmd.Parameters.AddWithValue("@cususerid", txtuserid.Text);
            reader = cmd.ExecuteReader();
            if (reader != null && reader.HasRows)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Username Exists! Choose another');window.location ='Registration.aspx';", true);
                conn.Close();
            }
            else
            {

                string message = string.Empty;
                try
                {
                    SqlConnection conBook;
                    string connStr = ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
                    conBook = new SqlConnection(connStr);
                    conBook.Open();

                    string strInsert;
                    SqlCommand cmdInsert;
                    strInsert = "Insert Into Customer (CusUserID, CusPassword, CusName, CusContNo, CusEmail, CusAddress ) Values (@cususerid, @cuspass, @cusname, @cuscontno, @cusemail, @cusaddress )";

                    cmdInsert = new SqlCommand(strInsert, conBook);


                    cmdInsert.Parameters.AddWithValue("@cususerid", txtuserid.Text);
                    cmdInsert.Parameters.AddWithValue("@cuspass", txtPass.Text);
                    cmdInsert.Parameters.AddWithValue("@cusname", txtcustname.Text);
                    cmdInsert.Parameters.AddWithValue("@cuscontno", txtcustcontno.Text);
                    cmdInsert.Parameters.AddWithValue("@cusemail", txtcustemail.Text);
                    cmdInsert.Parameters.AddWithValue("@cusaddress", txtaddress.Text);

                    //Char name = Char.Parse(txtcustname.Text);
                    Double num = Double.Parse(txtcustcontno.Text);



                    int n = cmdInsert.ExecuteNonQuery();

                    if (n > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('User details saved sucessfully');window.location ='LoginPage.aspx';", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Fail to Add , Please try again !')", true);
                    }
                    conBook.Close();




                }
                catch (Exception ex)
                {
                    message = "Contact Number cannot contain alphabetic " + ex.Message;
                }

                lblpass.Text = message;
                lblpass.Visible = true;

            }







        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtuserid.Text = "";
            txtPass.Text = "";
            txtcustname.Text = "";
            txtcustcontno.Text = "";
            txtcustemail.Text = "";
            txtaddress.Text = "";
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string message = string.Empty;
        //    try
        //    {
        //        Double name = Double.Parse(txtcustname.Text);
        //        message = "Your name is" + name;
        //    }
        //    catch
        //    {
        //        message = "Please Try again";
        //    }

        //    lblpass.Text = message;
        //    lblpass.Visible = true;
        //}


      


    }
}