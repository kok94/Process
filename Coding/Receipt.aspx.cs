using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
namespace WEBFINAL
{
    public partial class receipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["CustUserID"] != null
                && Request.Cookies["TripDate"] != null
                && Request.Cookies["hour"] != null
                && Request.Cookies["min"] != null
             && Request.Cookies["PickUpLocation"] != null
             && Request.Cookies["Destination"] != null
             && Request.Cookies["Distance"] != null
             && Request.Cookies["Duration"] != null
                && Request.Cookies["TaxiDriverName"] != null
                && Request.Cookies["TaxiDriverCarPlate"] != null
                && Request.Cookies["TaxiDriverID"] != null
                && Request.Cookies["receiptnumber"] != null
                && Request.Cookies["paymentdatetime"] != null
                 && Request.Cookies["TotalAmount"] != null)
            {
                lblPaymentStatus.Text = "Successful";
                lblReceiptNum.Text = Request.Cookies["receiptnumber"].Value;
                lblCustomerName.Text = Request.Cookies["CustUserID"].Value;
                lblPaymentMethod.Text = Request.Cookies["PaymentMethod"].Value;
                lblPaymentDateTime.Text = Request.Cookies["paymentdatetime"].Value;
                lblAmount.Text = Request.Cookies["TotalAmount"].Value;

                lblTripDate.Text = Request.Cookies["TripDate"].Value;
                lblTripTime.Text = Request.Cookies["hour"].Value + Request.Cookies["min"].Value;
                lblPickUpLocation.Text = Request.Cookies["PickUpLocation"].Value;
                lblDestination.Text = Request.Cookies["Destination"].Value;

                lblTaxiDriver.Text = Request.Cookies["TaxiDriverID"].Value;
                lblTaxiPlateNumber.Text = Request.Cookies["TaxiDriverCarPlate"].Value;

                
            }

            XmlDocument oXmlDocument = new XmlDocument();

            oXmlDocument.Load(@"C:\Users\alvin\Documents\Visual Studio 2013\Projects\WEBFINAL\WEBFINAL\receipt.xml");
            XmlNode oXmlRootNode = oXmlDocument.SelectSingleNode("records");
            XmlNode oXmlRecordNode = oXmlRootNode.AppendChild(
                oXmlDocument.CreateNode(XmlNodeType.Element, "record", ""));
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "Receiptnumber", "")).InnerText = lblReceiptNum.Text;
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "CustomerName", "")).InnerText = lblCustomerName.Text;
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "PaymentMethod", "")).InnerText = lblPaymentMethod.Text;
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "PaymentDateTime", "")).InnerText = lblPaymentDateTime.Text;
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "Amount", "")).InnerText = lblAmount.Text;
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "TripDate", "")).InnerText = lblTripDate.Text;
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "TripTime", "")).InnerText = lblTripTime.Text;
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "PickUpLocation", "")).InnerText = lblPickUpLocation.Text;
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "Destination", "")).InnerText = lblDestination.Text;
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "TaxiDriver", "")).InnerText = lblTaxiDriver.Text;
            oXmlRecordNode.AppendChild(oXmlDocument.CreateNode(XmlNodeType.Element,
                "TaxiPlateNumber", "")).InnerText = lblTaxiPlateNumber.Text;

            oXmlDocument.Save(@"C:\Users\alvin\Documents\Visual Studio 2013\Projects\WEBFINAL\WEBFINAL\receipt.xml");

        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerHomePage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerHomePage.aspx");
        }
    }
}