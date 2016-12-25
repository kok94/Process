<%@ Page Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="ViewHistory.aspx.cs" Inherits="WEBFINAL.ViewHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <title></title>
    <style type="text/css">            
        .btnMakeReservation {
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
        .btnMakeReservation:hover {
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	        background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
        	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	        background-color:#ffab23;
        }
        .btnMakeReservation:active {
        	position:relative;
	        top:1px;        
        }
        

        body {
            margin-left:10%;
            margin-right:10%;
        }
                
        .viewHistory {
            text-align:center;
            font-family:'Comic Sans MS';
            font-size:20px;
            
        }

        .lblHistory {
            border-bottom:double;
        }

        .gridView {
            font-family:'Comic Sans MS';
            font-size:small
        }

        </style>    
    <div style="height: 202px">

        <div style="padding-left:15px;">
            <asp:Button ID="btnMakeReservation" class="btnMakeReservation" runat="server" Text="Make Reservation" Height="36px" OnClick="btnMakeReservation_Click"  />
            &nbsp; 
            <br />
            <br />
            <div id="viewHistory" class="viewHistory">

                <asp:Label ID="lblHistory" class="lblHistory" runat="server" Text="History"></asp:Label>

                <br />

                <br />

            </div>

            <div id="gridView" class="gridView">


                <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" DataKeyNames="ReservationID" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="PickUpLocation" HeaderText="PickUpLocation" SortExpression="PickUpLocation" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                        <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\web.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ReservationID], [DriverID], [PickUpLocation], [Destination], [Date], [Time], [Duration] FROM [Reservation]"></asp:SqlDataSource>


            </div>
        </div>
    </div>

              </asp:Content>