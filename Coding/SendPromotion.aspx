<%@ Page Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="SendPromotion.aspx.cs" Inherits="WEBFINAL.SendPromotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <title></title>
    <style type="text/css">
        #txtArea {
            height: 81px;
            width: 306px;
        }
    .auto-style1 {
        width: 66px;
    }
    .auto-style2 {
        width: 66px;
        height: 8px;
    }
    .auto-style3 {
        height: 8px;
    }
    .Button1 {
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
        	font-family:'Comic Sans MS';
	        font-size:15px;
	        font-weight:bold;
	        padding:6px 24px;
	        text-decoration:none;
	        text-shadow:0px 1px 0px #ffee66;
        }
        .Button1:hover {
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	        background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
        	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	        background-color:#ffab23;
        }

    </style>
    <div>
    
        <h3 align="center"><strong>Send Promotion<br />
            </strong></h3>
        <table style="margin-left:30%">
           
             <tr style="margin-bottom:20%">
                <td class="auto-style1">To</td>
                <td  >
        <asp:TextBox ID="txtCheck" runat="server" Width="409px" Enabled="False"></asp:TextBox>
                 </td>
                <td>&nbsp;</td>
            </tr>
             <tr style="margin-bottom:20%">
                <td class="auto-style1">&nbsp;</td>
                <td  >
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style2">Title</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="410px"></asp:TextBox>
                 </td>
                <td class="auto-style3"></td>
            </tr>
             <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">Message&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtMsg" runat="server" Height="72px" Width="411px"></asp:TextBox>
                 </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" class="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Label ID="lblCustId" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
    
    </div>
      </asp:Content>