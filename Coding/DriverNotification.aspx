<%@ Page Language="C#" MasterPageFile="~/Driver.Master" AutoEventWireup="true" CodeBehind="DriverNotification.aspx.cs" Inherits="WEBFINAL.DriverNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 91px;

            .btnSend {
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
        .btnSend:hover {
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	        background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
        	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	        background-color:#ffab23;
        }

            .btnDone {
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
        .btnDone:hover {
	        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23), color-stop(1, #ffec64));
	        background:-moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:-ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	        background:linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
        	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23', endColorstr='#ffec64',GradientType=0);
	        background-color:#ffab23;
        }
     
        }
    </style>
    <div align="center">
    
        <h3 align="center">Notification<br /></h3>
        <table style="width:30%;" align="center">
            <tr>
                <td class="auto-style1">Driver ID</td>
                <td>
                    <asp:TextBox ID="txtDriverId" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            
        </table>
        <br />
        <asp:DataList align="center" ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" HorizontalAlign="Center"   RepeatColumns="1" Width="80%" UseAccessibleHeader="True" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
           <HeaderTemplate>
                           <table cellpadding="22px" cellspacing="0"   style="Border:1px solid black;text-align:center" width="100%">
                               <thead style="Border:1px solid black;text-align:center" Width="100%" >
                                   <tr >
                                     
                                       <th style="Border:1px solid black">Customer Name</th>
                                       <th style="Border:1px solid black">Customer Contact Number</th>
                                       <th style="Border:1px solid black">Customer Email</th>
                                       <th style="Border:1px solid black">Pick up Location</th>
                                       <th style="Border:1px solid black">Destination</th>
                                       <th style="border:1px solid black">Date</th>
                                       <th style="Border:1px solid black">Time</th>
                                       
                                        <th style="Border:1px solid black">Send Message</th>
                                       <th style="Border:1px solid black">Job</th>
                                   </tr>
                               </thead>
                              
</HeaderTemplate>
            
              <ItemTemplate>
                   <tr>
                                    <td>
                  <asp:Label ID="CusNameLabel" runat="server" Text='<%# Eval("CusName") %>' />
                 </td>
                                 <td>
                  <asp:Label ID="CusContNoLabel" runat="server" Text='<%# Eval("CusContNo") %>' />
                  </td>
                                 <td>
                  <asp:Label ID="CusEmailLabel" runat="server" Text='<%# Eval("CusEmail") %>' />
                  </td>
                                 <td>
                  <asp:Label ID="PickUpLocationLabel" runat="server" Text='<%# Eval("PickUpLocation") %>' />
                  </td>
                                 <td>
                  <asp:Label ID="DestinationLabel" runat="server" Text='<%# Eval("Destination") %>' />
                  </td>
                                 <td>
                  <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                  </td>
                                 <td>
                  <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                  </td>
                       <td>
                       <asp:Button ID="btnSend" class="btnSend" runat="server" Text="Send" Width="83px" OnClick="btnSend_Click" PostBackUrl="~/EmailDetail.aspx" />
                       </td><td>
                       <asp:Button ID="btnDone" class="btnDone" runat="server" Text="Done" Width="83px" OnClick="btnDone_Click"  />
                                  </td>

                                 </tr>

            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Customer.CusName, Customer.CusContNo, Customer.CusEmail, Reservation.PickUpLocation, Reservation.Destination, Reservation.Time, Reservation.Date FROM Customer INNER JOIN Payment ON Customer.CusUserID = Payment.CusUserID INNER JOIN Reservation ON Payment.ReservationID = Reservation.ReservationID INNER JOIN Driver ON Reservation.DriverID = Driver.DriverID WHERE (Reservation.DriverID = @driverID) AND (Payment.TripStatus='PENDING')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtDriverID" Name="DriverID" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
    
    </div>
    </asp:content>