<%@ Page Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="SearchCustDetails.aspx.cs" Inherits="WEBFINAL.SearchCustDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <title>Search GridView Record on Button Click By Using C#.Net in Asp.Net</title>
    <style type="text/css">
        #form1 {
            height: 535px;
        }
    </style>


   
    Search By Title : <asp:TextBox ID="txtsearch" runat="server" AutoPostBack="True"></asp:TextBox>
      
        
        
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="Solid" DataKeyNames="CusUserID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ShowFooter="True" Width="500px">
                    <Columns>
                        <asp:BoundField DataField="CusUserID" HeaderText="CusUserID" ReadOnly="True" SortExpression="CusUserID" />
                        <asp:BoundField DataField="CusPassword" HeaderText="CusPassword" SortExpression="CusPassword" />
                        <asp:BoundField DataField="CusName" HeaderText="CusName" SortExpression="CusName" />
                        <asp:BoundField DataField="CusContNo" HeaderText="CusContNo" SortExpression="CusContNo" />
                        <asp:BoundField DataField="CusEmail" HeaderText="CusEmail" SortExpression="CusEmail" />
                        <asp:BoundField DataField="CusAddress" HeaderText="CusAddress" SortExpression="CusAddress" />
                    </Columns>
                    <HeaderStyle BackColor="#66CCFF" />
                </asp:GridView>
   

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT CusUserID, CusPassword, CusName, CusContNo, CusEmail, CusAddress FROM Customer WHERE (CusUserID = @CusUserID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtsearch" Name="CusUserID" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Timer ID="Timer1" runat="server">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>

    </asp:content>