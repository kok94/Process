<%@ Page Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="UpdateDriver.aspx.cs" Inherits="WAD.UpdateDriver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 141px;
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
        .auto-style2 {
            width: 141px;
            height: 42px;
        }
        .auto-style3 {
            height: 42px;
        }
        .auto-style4 {
            width: 141px;
            height: 71px;
        }
        .auto-style5 {
            height: 71px;
        }
    </style>
    <div style="margin-left:35%">
    
        <table style="width:50%;" align="left">
            <tr >
                <td colspan="2" ><h3>Driver Details</h3></td>
                
                
            </tr>
            <tr>
                <td class="auto-style1">Driver ID</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DriverID" DataValueField="DriverID" AutoPostBack="True">
                    </asp:DropDownList>
                   &nbsp; 
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebConn %>" SelectCommand="SELECT [DriverID] FROM [Driver]"></asp:SqlDataSource>
                </td>
                  <td class="auto-style1">&nbsp;</td>
            </tr>
                   <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtDriverID" runat="server" Enabled="False" Visible="False"></asp:TextBox>
                </td>
                  <td class="auto-style1">&nbsp;</td>
            </tr>


            <tr>
                <td class="auto-style1">Driver Name</td>
                <td>
                    <asp:TextBox ID="txtDriverName" runat="server"></asp:TextBox>
                </td>
                  <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDriverName" ErrorMessage="Driver Name cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Driver IC</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtDriverIC" runat="server"></asp:TextBox>
                </td>
                  <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDriverIC" ErrorMessage="Driver IC cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDriverIC" ErrorMessage="Must be 12 NUMERIC" ForeColor="Red" ValidationExpression="^[0-9]{12}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Expired Car License</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtExpiredCarLicense" runat="server"></asp:TextBox>
                </td>
                 <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style1">Contact Number</td>
                <td>
                    <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox>
                </td>
                  <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContactNumber" ErrorMessage="contact number cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Car Plate Number</td>
                <td>
                    <asp:TextBox ID="txtCarPlateNumber" runat="server"></asp:TextBox>
                </td>
                  <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCarPlateNumber" ErrorMessage="Car Plate Number cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            </tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button1" runat="server" Class="btn" Text="Update" OnClick="Button1_Click" style="margin-bottom: 0px" />
            </td>
                  <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                  <td class="auto-style1">&nbsp;</td>
            </tr>
           
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
        </asp:Content>