<%@ Page Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="WEBFINAL.receipt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">    
    <style type="text/css">
        .auto-style10 {
            height: 20px;
            width: 314px;
        }
        .auto-style14 {
            width: 314px;
        }
        .auto-style17 {
            height: 19px;
            width: 314px;
        }
        .auto-style20 {
            height: 22px;
            width: 314px;
        }
        .TitleColour {
    display: inline-block;
    background-color: #fdc903;
    color: #fff;
    font-size: 14px;
    line-height: 20px;
    padding: 10px 26px 8px 25px;
    font-weight:bold;
    color: #3e454c;
    font-family: 'Roboto Condensed', sans-serif;
    

}
        .auto-style26 {
            height: 22px;
            }
        .auto-style29 {
            height: 19px;
            width: 1001px;
        }
        .auto-style30 {
            height: 20px;
            width: 1001px;
        }
        .auto-style31 {
            width: 1001px;
        }
        .auto-style32 {
            height: 22px;
            width: 1001px;
        }
        .auto-style33 {
            width:10px;
            height: 19px;
        }
        .auto-style34 {
            height: 20px;
        }
        .auto-style35 {
            display: inline-block;
            background-color: #fdc903;
            color: #fff;
            color: #3e454c;
            font-size: 14px;
            line-height: 20px;
            padding: 10px 26px 8px 25px;
            font-weight: bold;
            
            font-family: 'Roboto Condensed', sans-serif;

        }
        .auto-style37 {
            height: 19px;
        }
        .auto-style38 {
        height: 18px;
        width: 1001px;
    }
    .auto-style39 {
        width: 10px;
        height: 18px;
    }
    .auto-style40 {
        height: 18px;
        width: 314px;
    } .btn {
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
</head>
<body>
    <div>
    
        <table style="width:35%; height: 233px;margin-left:32% ;text-align:left">
            <tr>
                <td><h3>Receipt</h3></td>
            </tr>
            <tr>
                <td class="auto-style29">Payment Status</td>
                <td class="auto-style37">:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblPaymentStatus" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Receipt Number</td>
                <td class="auto-style33">:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblReceiptNum" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Customer Name</td>
                <td class="auto-style33">:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblCustomerName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Payment Method</td>
                <td class="auto-style33">:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblPaymentMethod" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Payment Date/Time</td>
                <td class="auto-style33">:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblPaymentDateTime" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">Amount(RM)</td>
                <td class="auto-style34">:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblAmount" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td  style="text-align:center" class="auto-style35" colspan="3">Trip Information</td>
            </tr>
            <tr>
                <td class="auto-style31">Trip Date</td>
                <td>:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblTripDate" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">Trip Time</td>
                <td class="auto-style34">:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblTripTime" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">Pick Up Location</td>
                <td class="auto-style26">:</td>
                <td class="auto-style20">
                    <asp:Label ID="lblPickUpLocation" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">Destination</td>
                <td class="auto-style39">:</td>
                <td class="auto-style40">
                    <asp:Label ID="lblDestination" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35"  style="text-align:center" colspan="3" >Taxi Information</td>
            </tr>
            <tr>
                <td class="auto-style30">Taxi Driver Name</td>
                <td class="auto-style34">:</td>
                <td class="auto-style10">
                    <asp:Label ID="lblTaxiDriver" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">Taxi Plate Number</td>
                <td class="auto-style33">:</td>
                <td class="auto-style17">
                    <asp:Label ID="lblTaxiPlateNumber" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="btnPrint" CssClass="btn" runat="server" Text="Print" Width="157px" OnClick="btnPrint_Click" />
                    
                    </td>
                <td class="auto-style10">
                   
                    <asp:Button ID="Button3" CssClass="btn" runat="server" Text="Cancel" Width="157px" OnClick="Button1_Click"  />
                    </td>
            </tr>
            <tr>
                <td class="auto-style30">
                    &nbsp;</td>
                <td class="auto-style34">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    
    </div>

            </asp:Content>