<%@ Page Language="C#" MasterPageFile="~/Driver.Master" AutoEventWireup="true" CodeBehind="EmailDetail.aspx.cs" Inherits="WEBFINAL.EmailDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <asp:TextBox ID="txtDriverID" runat="server" Visible="False"></asp:TextBox>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 451px;
        }
        #TextArea1 {
            height: 200px;
            width: 533px;
            margin-left: 0px;
        }
        .auto-style3 {
            width: 24px;
        }
        #txaMessage {
            height: 171px;
            width: 525px;
        }
        .auto-style4 {
            width: 82px;
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
         .btnBack {
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
        .btnBack:hover {
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	        background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
        	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	        background-color:#ffab23;
        }
        .auto-style5 {
            width: 24px;
            font-weight: bold;
        }
        .auto-style6 {
            width: 24px;
            height: 47px;
        }
        .auto-style7 {
            width: 451px;
            height: 47px;
        }
    </style>
    <div>
    <h1><strong>Send Email</strong></h1>
        
       
      
           
           
      
        <table style="margin-left: 200px"  >
            <tr>
                <td class="auto-style3" align="right" >
                    <h6><strong>To </strong></h6>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtTo" runat="server"  Width="287px" OnTextChanged="txtTo_TextChanged" Enabled="False"></asp:TextBox>
                </td>
                
            </tr>
             <tr>
                <td class="auto-style3" align="right" >
                    <h6>&nbsp;</h6>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style5" align="right" >
                    <h6><strong>Title </strong></h6>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtTitle" runat="server" style="margin-left: 0px" Width="287px" Enabled="False" OnTextChanged="txtTitle_TextChanged">Taxi Arrive!</asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style5" align="right" >
                    <h6>&nbsp;</h6>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style6" align="right">
                    <h6><strong>Message</strong></h6>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtMsg" runat="server" Enabled="False" Width="287px">Driver are arrived your destination.</asp:TextBox>
                </td>
              
            </tr>
        </table>
        <table style="width:50%;" align="center" >
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" class="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
                    <asp:Button ID="btnBack" class="btnBack" runat="server" OnClick="btnBack_Click" PostBackUrl="~/DriverNotification.aspx" Text="Back" />
                </td>
                
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
        </table>
        <br />
       
        <br />
    
    </div>

        </asp:content>