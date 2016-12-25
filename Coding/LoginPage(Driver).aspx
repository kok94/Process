<%@ Page Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="LoginPage(Driver).aspx.cs" Inherits="WEBFINAL.LoginPage_Driver_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <title>EzCab</title>
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
            height: 0px;
            text-align: left;
        }
        .auto-style3 {
            height: 34px;
        }
        .auto-style4 {
            height: 38px;
        }
        .auto-style5 {
            height: 38px;
            width: 153px;
            text-align: right;
        }
        .auto-style6 {
            height: 34px;
            text-align: right;
        }
        .auto-style7 {
            height: 34px;
            text-align: right;
            width: 153px;
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
    
        <table style="width: 35%; height: 136px;margin-left:37%;margin-top:10%;text-align:left">
            <tr>
                <td colspan="2" style="text-align: center" class="auto-style3">
                    <h6 class="auto-style2" style="margin-left:20%"> Driver Login Page</h6>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="text-align:left">User ID :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="userid" runat="server" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align:left">Password :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="userpass" runat="server" TextMode="Password" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" class="btn" OnClick="Button1_Click" Text="Login" />
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn" Text="Reset" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <h3 style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </h3>
                </td>
            </tr>
        </table>
    
    </div>
    </asp:Content>