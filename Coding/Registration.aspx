<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/General.Master" CodeBehind="Registration.aspx.cs" Inherits="WEBFINAL.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <title></title>
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 10px;
            text-align: center;
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 169px;
        }
        .auto-style5 {
            font-weight: normal;
        }
        .btnadd {
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
.btnadd:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	background-color:#ffab23;
}
.btnadd:active {
	position:relative;
	top:1px;
}

        .auto-style6 {
            height: 33px;
        }

    </style>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width:63%;" align="center">
            <tr>
                <td class="auto-style3" colspan="3">
                    <h2 class="auto-style5"><strong style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer Registration<br />
                        </strong></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">User ID</td>
                <td class="auto-style2">:</td>
                <td>
                    &nbsp;<asp:TextBox ID="txtuserid" runat="server" Width="186px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtuserid" ErrorMessage="Cannot be empty please fill in" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Height="20px" Width="184px"></asp:TextBox>
&nbsp;<br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPass" ErrorMessage="Only can 8-14 characters , at least 1 uppercase , 1 lower case , 1 numeric digit" ForeColor="Red" style="font-weight: 700; font-size: x-small" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="186px"/>&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPassword" ErrorMessage="Password Not Match" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Name</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtcustname" runat="server" Width="188px"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtcustname" ErrorMessage="Only alphabet is allow(at least 8-30 words) " ForeColor="Red" ValidationExpression="^[a-zA-Z\s]{8,30}$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Contact No.</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtcustcontno" runat="server" MaxLength="11" Width="189px" />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcustcontno" ErrorMessage="Cannot be empty please fill in" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtcustemail" runat="server" Width="189px" ></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcustemail" ErrorMessage="Cannot be empty please fill in" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" Width="189px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress" ErrorMessage="Cannot be empty please fill in" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnadd" runat="server" class="btnadd" OnClick="btnadd_Click" Text="Add" Width="93px" />
&nbsp;
                    <asp:Button ID="btnreset" runat="server" CssClass="btnadd" OnClick="btnreset_Click" Text="Reset" Width="98px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderColor="Yellow" BorderStyle="Inset" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <br />
                    <asp:Label ID="lblpass" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000">
                            </asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                </td>
            </tr>
        </table>
      </asp:Content>