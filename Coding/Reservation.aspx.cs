using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEBFINAL
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDateChosen.Text = DateTime.Now.ToLongDateString();
            if (Request.Cookies["CusName"] != null && Request.Cookies["CusContNo"] != null)
            {
                txtName.Text = Request.Cookies["CusName"].Value;
                txtContactNum.Text = "0" + Request.Cookies["CusContNo"].Value;
                txtName.Enabled = false;
                txtContactNum.Enabled = false;
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime pastday = e.Day.Date;
            DateTime date = DateTime.Now;
            int year = date.Year;
            int month = date.Month;
            int day = date.Day;
            DateTime today = new DateTime(year, month, day);
            if (pastday.CompareTo(today) < 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;
            }
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            //if (Calendar1.SelectedDate.ToLongDateString().Equals(System.DateTime.Now.ToLongDateString()))
            //{
                int hours = DateTime.Now.Hour;
                int minutes = DateTime.Now.Minute;
                int seconds = DateTime.Now.Second;

                TimeSpan start = new TimeSpan(Int32.Parse(ddlHour.SelectedValue), Int32.Parse(ddlMin.SelectedValue), 0);
                TimeSpan now = DateTime.Now.TimeOfDay;

                if ((now < start))
                {
                    if (vsErrorMessage == null)
                    {

                    }

                    else
                    {
                        lbl1.Visible = true;
                        lbl2.Visible = true;
                        btnProceedChooseTaxi.Visible = true;
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "none", "$(document).ready(function(){GetRoute();});", true);
                        lblDistance.Visible = true;
                        lblTimeNeeded.Visible = true;
                        lblShowTrip.Text = ">>  " + txtPickUpAdd.Text + "<br />to<br /> " + ">>  " + txtDestination.Text;
                    }
                }
                else
                {
                    Response.Write("<script>alert('Time chosen must be at least 2 hours ahead');</script>");
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Time chosen must be at least 2 hours ahead')", true);
                }
            //}






        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblDateChosen.Text = Calendar1.SelectedDate.ToLongDateString();


        }

        protected void txtPickUpAdd_TextChanged(object sender, EventArgs e)
        {
            cbFavouritePickUp.Enabled = true;
            cbFavouritePickUp.Checked = false;
        }

        protected void txtDestination_TextChanged(object sender, EventArgs e)
        {
            cbFavouriteDestination.Enabled = true;
            cbFavouriteDestination.Checked = false;
        }

        protected void ddlPickUpAdd_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPickUpAdd.Text = ddlPickUpAdd.SelectedItem.Value;
            cbFavouritePickUp.Checked = false;
        }

        protected void cbFavouritePickUp_CheckedChanged(object sender, EventArgs e)
        {
            if (ddlPickUpAdd.Items.FindByText(txtPickUpAdd.Text) == null)
            {
                ddlPickUpAdd.Items.Add(txtPickUpAdd.Text);
            }

        }

        protected void ddlDestination_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtDestination.Text = ddlDestination.SelectedItem.Value;
            cbFavouriteDestination.Checked = false;
        }

        protected void cbFavouriteDestination_CheckedChanged(object sender, EventArgs e)
        {
            if (ddlDestination.Items.FindByText(txtDestination.Text) == null)
            {
                ddlDestination.Items.Add(txtDestination.Text);
            }
        }

        protected void btnViewHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewHistory.aspx");
        }

        protected void btnProceedChooseTaxi_Click(object sender, EventArgs e)
        {
            string distance = HiddenField1.Value;
            distance = distance.Remove(distance.Length - 3);

            HttpCookie cookie3 = new HttpCookie("TripDate", Calendar1.SelectedDate.ToShortDateString());
            HttpCookie cookie4 = new HttpCookie("hour", ddlHour.SelectedValue);
            HttpCookie cookie12 = new HttpCookie("min", ddlMin.SelectedValue);
            HttpCookie cookie5 = new HttpCookie("PickUpLocation", txtPickUpAdd.Text);
            HttpCookie cookie6 = new HttpCookie("Destination", txtDestination.Text);
            HttpCookie cookie7 = new HttpCookie("Distance", distance);
            HttpCookie cookie8 = new HttpCookie("Duration", HiddenField2.Value);

            Response.Cookies.Add(cookie3);
            Response.Cookies.Add(cookie4);
            Response.Cookies.Add(cookie5);
            Response.Cookies.Add(cookie6);
            Response.Cookies.Add(cookie7);
            Response.Cookies.Add(cookie8);
            Response.Cookies.Add(cookie12);

            Response.Redirect("~/ChooseTaxi.aspx?name=" + txtName.Text + "&contact=" + txtContactNum.Text + "&pickUp=" + txtPickUpAdd.Text +
                "&destination=" + txtDestination.Text + "&date=" + Calendar1.SelectedDate.ToShortDateString() + "&hour=" + ddlHour.SelectedValue +
                "&min=" + ddlMin.SelectedValue +
                "&distance=" + HiddenField1.Value + "&timeNeeded=" + HiddenField2.Value);
            //Response.Redirect("~/paymentSummary.aspx?PickUpLocation=" + txtPickUpAdd.Text +
            //    "&Destination=" + txtDestination.Text + 
            //    "&TripDate=" + Calendar1.SelectedDate.ToShortDateString() + 
            //    "&hour=" + ddlHour.SelectedValue +
            //    "&min=" + ddlMin.SelectedValue +
            //    "&Distance=" + HiddenField1.Value + 
            //    "&Duration=" + HiddenField2.Value +
            //    "&CustomerID=" + customerID);
        }
    }
}