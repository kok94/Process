<%@ Page Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="ChooseTaxi.aspx.cs" Inherits="WEBFINAL.ChooseTaxi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <title></title>
    <style type="text/css">
        body {
            margin-left:10%;
            margin-right:10%;
        }
                
        .btnBackToReservation {
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

        .btnBackToReservation:hover {
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	        background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
        	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	        background-color:#ffab23;

        }
        .btnBackToReservation:active {
        	position:relative;
	        top:1px;        
        }
        
        .viewChooseTaxi {
            text-align:center;
            font-family:'Comic Sans MS';
            font-size:20px;
            
        }

        .lblChooseTaxi {
            border-bottom:double;
        }

        .gridViewChooseTaxi {
            font-family:'Comic Sans MS';
            font-size:small;
            margin-left:20%;
            margin-right:20%;
            
        }

        .viewReservationSummary {
            text-align:center;
            font-family:'Comic Sans MS';
            
            
        }

        .lblViewReservationSummary {
            border-bottom:double;
            font-size:20px;
            text-align: center;
        }
        .auto-style1 {
            width: 144px;
            background-color:#ffec64;
        }

        .reservationTable {
            text-align:left;
            font-size:small;
            border:dashed;
            margin-left:140px;
            margin-right:50px;
        }
        .auto-style2 {
            width: 700px;
        }
                
        .btnProceedToPayment {
	        -moz-box-shadow:inset 0px 1px 0px 0px #fff6af;
	        -webkit-box-shadow:inset 0px 1px 0px 0px #fff6af;
	        box-shadow:inset 0px 1px 0px 0px #fff6af;
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
	        padding:5px 24px;
	        text-decoration:none;
	        text-shadow:0px 1px 0px #ffee66;
            
        }

        .btnProceedToPayment:hover {
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	        background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
        	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	        background-color:#ffab23;

        }
        .btnProceedToPayment:active {
        	position:relative;
	        top:1px;        
        }

        .proceedPayment {
            text-align:center;
        }
        </style>
    <div>
        <div>

            <asp:Button ID="btnBackToReservation" class="btnBackToReservation" runat="server" Text="Back" Height="36px" CausesValidation="False" OnClick="btnBackToReservation_Click" />

            &nbsp;<br />

            <br />

        </div>
        <div id="viewChooseTaxi" class="viewChooseTaxi">

                <asp:Label ID="lblChooseTaxi" class="lblChooseTaxi" runat="server" Text="Choose Taxi"></asp:Label>            

                <br />

                <br />

        </div>

        <div>

            <asp:GridView ID="gridViewChooseTaxi" class="gridViewChooseTaxi" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="gridViewChooseTaxi_SelectedIndexChanged" DataKeyNames="DriverID">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="DriverName" HeaderText="Driver Name" SortExpression="DriverName" />
                    <asp:BoundField DataField="DriverID" HeaderText="Driver ID" SortExpression="DriverID" ReadOnly="True" />
                    <asp:BoundField DataField="CarPlateNumber" HeaderText="Car Plate Number" SortExpression="CarPlateNumber" />
                    <asp:BoundField DataField="TaxiCompany" HeaderText="Taxi Company" SortExpression="TaxiCompany" />
                    <asp:BoundField DataField="ExpiredCarLicenseDate" HeaderText="Expired Car License Date" SortExpression="ExpiredCarLicenseDate" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" SortExpression="ContactNumber" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#ffec64" Font-Bold="True" ForeColor="Black" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [DriverName], [DriverID], [CarPlateNumber], [TaxiCompany], [ExpiredCarLicenseDate], [ContactNumber] FROM [Driver] where [Status] = 'AVAILABLE'"></asp:SqlDataSource>

            <br />
            <br />

        </div>
        <div id="viewReservationSummary" class="viewReservationSummary">

            <asp:Label ID="lblViewReservationSummary" class="lblViewReservationSummary" runat="server" Text="Reservation Summary"></asp:Label>            

            <br />

            <br />
            <table id="reservationTable" class="reservationTable">
                <tr>
                    <td class="auto-style1">Customer Name</td>
                    <td>:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Contact Number</td>
                    <td>:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblContactNum" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Pick Up Address</td>
                    <td>:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblPickUpAdd" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Destination</td>
                    <td>:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblDestination" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Date of Depart</td>
                    <td>:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Time of Depart</td>
                    <td>:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblTime" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Distance</td>
                    <td>:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblDistance" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Time Needed</td>
                    <td>:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblTimeNeeded" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Driver</td>
                    <td>:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblDriver" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Car Plate Number</td>
                    <td>:</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblCarPlate" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div id="proceedPayment" class="proceedPayment">

                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                    <br />

                    <asp:Button ID="btnProceedToPayment" runat="server" class="btnProceedToPayment" Text="Proceed to Payment" Visible="True" Width="236px" OnClick="btnProceedToPayment_Click" />

        </div>
    </div>
        </asp:Content>