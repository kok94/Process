<%@ Page Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WEBFINAL.EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 22px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
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
    </style>
    <div style="height: 538px; text-align: center">
    
        Personal Information<br />
        <table style="width: 42%; height: 285px; margin-left: 239px;">
            <tr>
                <td class="auto-style5">User ID</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtuserid" runat="server" AutoPostBack="True" OnTextChanged="txtuserid_TextChanged"></asp:TextBox>
&nbsp;</td>

            </tr>
            <tr>
                <td class="auto-style5">Password</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPass" ErrorMessage="Only can 8-14 characters , at least 1 uppercase , 1 lower case , 1 numeric digit" ForeColor="Red" style="font-weight: 700; font-size: x-small" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Confirm Password</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtConPass" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Name</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtcustname" runat="server" Enabled="False"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Contact No.</td>
                <td class="auto-style2">:</td>
                <td>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtcustcontno" runat="server" />
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcustcontno" ErrorMessage="Please Enter Valid Phone Number" ForeColor="Red" ValidationExpression="^[0-9]{10,11}$">* </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Email</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtcustemail" runat="server" ></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Address</td>
                <td class="auto-style2">:</td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:Button ID="btnsave" runat="server" CssClass="btnadd" OnClick="Button1_Click" Text="Save" />
                &nbsp;
                    <asp:Button ID="btnreset" runat="server" CssClass="btnadd" OnClick="btnreset_Click" Text="Reset" Width="98px" />
                </td>
                </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <dl>
                        <dt>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="#000066"></asp:Label>
                        </dt>
                    </dl>
                </td>
                </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <blockquote>
                                <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
                            </blockquote>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000">
                            </asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <br />
                </td>
                </tr>
        </table>
    
    </div>

    </asp:content>