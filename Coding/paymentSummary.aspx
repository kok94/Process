<%@ Page Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="paymentSummary.aspx.cs" Inherits="WEBFINAL.paymentSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <title>EzCab</title>
    <style type="text/css">
        .auto-style2 {            width: 205px;
        }
        .auto-style3 {
            height: 20px;
            width: 206px;
        }
        .auto-style10 {
            height: 10px;
            width: 206px;
        }
        .auto-style13 {
            height: 21px;
            width: 206px;
        }
        .auto-style19 {
            height: 19px;
            width: 206px;
        }
        .auto-style22 {
            height: 17px;
            width: 206px;
        }
        .auto-style25 {
            height: 22px;
            width: 206px;
        }
        .auto-style37 {
            height: 17px;
            width: 3px;
        }
        .auto-style38 {
            height: 22px;
            width: 3px;
        }
        .auto-style40 {
            height: 19px;
            width: 3px;
        }
        .auto-style42 {
            height: 10px;
            width: 3px;
        }
        .auto-style43 {
            height: 20px;
            width: 3px;
        }
        .auto-style44 {
            height: 21px;
            width: 3px;
        }
        .auto-style45 {
            height: 20px;
        }
        .auto-style51 {
            height: 17px;
            width: 205px;
        }
        .auto-style52 {
            height: 22px;
            width: 205px;
        }
        .auto-style54 {
            height: 19px;
            width: 205px;
        }
        .auto-style55 {
            height: 20px;
            width: 205px;
        }
        .auto-style56 {
            height: 21px;
            width: 205px;
        }
        .auto-style57 {
            height: 10px;
            width: 205px;
        }
    .auto-style58 {
        height: 15px;
        width: 205px;
    }
    .auto-style59 {
        height: 15px;
        width: 3px;
    }
    .auto-style60 {
        height: 15px;
        width: 206px;
    }
    .btn {
	-moz-box-shadow: 0px 1px 0px 0px #fff6af;
	-webkit-box-shadow: 0px 1px 0px 0px #fff6af;
	box-shadow: 0px 1px 0px 0px #fff6af;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffec64), color-stop(1, #ffab23));
	background:-moz-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-webkit-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-o-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:-ms-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background:linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffec64', endColorstr='#ffab23',GradientType=0);
	background-color:#ffec64;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #ffaa22;
	display:inline-block;
	cursor:pointer;
	color:#333333;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffee66;
}
.btn:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	background-color:#ffab23;
}
.btn:active {
	position:relative;
	top:1px;
}
    </style>
    <div>
                   <table style="width: 40%; height: 107px;margin-left:30%;text-align:left">
            
            <tr>
                <td class="auto-style2" style="text-align: right"  ><h3>Payment Summary</h3></td>
            </tr>
            <tr>
                <td class="auto-style45" ><h3>Trip Information</h3></td>
            </tr>
            <tr>
                <td class="auto-style58">Trip Date</td>
                <td class="auto-style59">:</td>
                <td class="auto-style60">
                    <asp:Label ID="lblTripDate" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style52">Trip Time(24 hour time format)</td>
                <td class="auto-style38">:</td>
                <td class="auto-style25">
                    <asp:Label ID="lblTripTime" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style51">Pick Up Location</td>
                <td class="auto-style37">:</td>
                <td class="auto-style22">
                    <asp:Label ID="lblPickUpLocation" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style54">Destination</td>
                <td class="auto-style40">:</td>
                <td class="auto-style19">
                    <asp:Label ID="lblDestination" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style55">Trip Distance(KM)</td>
                <td class="auto-style43">:</td>
                <td class="auto-style3">
                    <asp:Label ID="lblDistance" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style55">Selected Taxi Driver</td>
                <td class="auto-style43">:</td>
                <td class="auto-style3">
                    <asp:Label ID="lblTaxiDriver" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">Cost(RM)</td>
                <td class="auto-style44">:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblCost" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">GST(6%)</td>
                <td class="auto-style44">:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblGstCost" runat="server" Text="label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">Total Amount(RM)</td>
                <td class="auto-style44">:</td>
                <td class="auto-style13">
                    <asp:Label ID="lblTotalAmount" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style45"><h3>Payment</h3></td>
            </tr>
            <tr>
                <td class="auto-style55">Payment Method</td>
                <td class="auto-style43">:</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="rblPaymentMethod" runat="server" AutoPostBack="True">
                        <asp:ListItem>Master</asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style55">Credit Card Number</td>
                <td class="auto-style43">:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtCCNumber" runat="server" />
<asp:RequiredFieldValidator ID="CCnumberValidation1" runat="server" ErrorMessage="-Credit Card Number is required" ControlToValidate="txtCCNumber" ForeColor="Red" >*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="CCnumberValidation2" runat="server" va ControlToValidate="txtCCNumber" ErrorMessage="-Invalid Credit Card Number" ForeColor="Red" Display="Dynamic">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">Credit Card Expired Date</td>
                <td class="auto-style44">:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtCCExpDate" runat="server" style="margin-bottom: 2px" />
<asp:RequiredFieldValidator ID="CCExpDateValidation1" runat="server" ErrorMessage="-Credit Card Number Expired Date is required" ControlToValidate="txtCCExpDate" ForeColor="Red" >*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="CCExpDateValidation2" runat="server"  ControlToValidate="txtCCExpDate" ErrorMessage="-Invalid Credit Card Number Expired Date Format, MM/DD format is required" ForeColor="Red" Display="Dynamic" ValidationExpression="([0][1-9]|[1][0-2])/([0-9][0-9])">*</asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style57">CVV</td>
                <td class="auto-style42">:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCCV" runat="server" />
<asp:RequiredFieldValidator ID="CCVValidation1" runat="server" ErrorMessage="-CCV is required" ControlToValidate="txtCCV" ForeColor="Red" >*</asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="CCVValidation2" runat="server"  ControlToValidate="txtCCV" ErrorMessage="-Invalid CCV Format,You can only key in 3 digits " ForeColor="Red" Display="Dynamic" ValidationExpression="\d{3}">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style57">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style57">
                    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                </td>
                <td class="auto-style42">
                    &nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="btnPayment" Class="btn" runat="server" OnClick="Button3_Click" Text="Make Payment" Width="145px" />
                    <asp:Button ID="btnCancel" Class="btn" runat="server" Text="Cancel" Width="96px" OnClick="btnCancel_Click" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style57">
                    &nbsp;</td>
                <td class="auto-style42">
                    &nbsp;</td>
                <td class="auto-style10">
      <div style="text-align:left">  <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Error Found:" />
      </div>
                </td>
            </tr>
        </table>
    </div>
    
        </asp:Content>