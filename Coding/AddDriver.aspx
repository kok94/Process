<%@ Page Language="C#" MasterPageFile="~/Driver.Master" AutoEventWireup="true" CodeBehind="AddDriver.aspx.cs" Inherits="WEBFINAL.AddDriver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 

    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            width: 183px;
        }
        .auto-style3 {
            height: 19px;
            width: 183px;
        }
        .auto-style4 {
            width: 209px;
        }
        .auto-style5 {
            height: 19px;
            width: 209px;
        }
        .auto-style6 {
            width: 183px;
            height: 22px;
        }
        .auto-style7 {
            width: 209px;
            height: 22px;
        }
        .auto-style8 {
            height: 22px;
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
    .auto-style9 {
        width: 183px;
        height: 21px;
    }
    .auto-style10 {
        width: 209px;
        height: 21px;
    }
    .auto-style11 {
        height: 21px;
    }
    </style>
    <div style="margin-left:38%">
    
        <h3 style="margin-right:50%">Add New Driver Details</h3>
        <table style="width:97%; text-align:left" align="center">
            <tr>
                <td class="auto-style6">Driver ID</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtDriverID" runat="server" Enabled="False" Width="201px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPass" runat="server" Width="201px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="Password cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPass" ErrorMessage="Only can 8-14 characters , at least 1 uppercase , 1 lower case , 1 numeric digit" ForeColor="Red" style="font-weight: 700; font-size: x-small" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPassword" runat="server" Width="201px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Match" ControlToCompare="txtPass" ControlToValidate="txtPassword" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Driver Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDriverName" runat="server" Width="201px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDriverName" ErrorMessage="Driver Name cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Driver IC Number</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDriverIC" runat="server" Width="203px" OnTextChanged="txtDriverIC_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDriverIC" ErrorMessage="Driver IC Number cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style2">Taxi Company</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCompanyName" runat="server" Enabled="False" Width="201px">EzCab</asp:TextBox>
                 </td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style3">Expired Driving License Date</td>
                <td class="auto-style5">
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" width="205px"></asp:Calendar>
                    <asp:TextBox ID="txtcal" runat="server" Enabled="False" Width="201px"></asp:TextBox>
                 </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcal" ErrorMessage="Please select  date" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td class="auto-style9">Contact Number</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtContactNumber" runat="server" Width="201px"></asp:TextBox>
                 </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContactNumber" ErrorMessage="Contact Number cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
            </tr>
            <tr>
                <td class="auto-style2">Car Plate Number</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCarPlateNumber" runat="server" Width="201px"></asp:TextBox>
                 </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCarPlateNumber" ErrorMessage="Car Plate Number cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style2">Status</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtStatus" runat="server" Enabled="False" Width="201px">Available</asp:TextBox>
                 </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                 <td>
                     &nbsp;</td>
                <td class="auto-style4">
                     <asp:Button ID="Button1" runat="server" class="btn" Text="Add" OnClick="Button1_Click" Width="100px" />
                     <asp:Button ID="Button2" runat="server" Class="btn" Text="Clear" OnClick="Button2_Click" Width="100px" />
                 </td>
                <td>
                     &nbsp;</td>
            </tr>

        </table>
        <br />
        <asp:Label ID="lblDisplay" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblcontact" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="lblplate" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        <br />
    
    </div>
        </asp:Content>