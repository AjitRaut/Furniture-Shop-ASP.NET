<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="vieworder.aspx.cs" Inherits="vieworder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><h1 style="background-color: #C0C0C0; color: #000000">CUSTOMER ORDER</h1>
    <asp:GridView ID="GridView2" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
        AutoGenerateColumns="False" ForeColor="Black" GridLines="Vertical" 
        Height="240px" Width="1052px">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
         <AlternatingRowStyle BackColor="#CCCCCC" />
         <Columns>
            <asp:BoundField DataField="uid" HeaderText=" Customer Id" />
            <asp:BoundField DataField="username" HeaderText="Customer Name" />
             <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="phone" HeaderText=" Mobile No" />
            <asp:BoundField DataField="email" HeaderText=" Email_Id" />
            <asp:BoundField DataField="date" HeaderText=" Purchase Date" />
            <asp:BoundField DataField="pname" HeaderText=" Product Name" />
            <asp:BoundField DataField="quantity" HeaderText=" Quantity" />
            <asp:BoundField DataField="price" HeaderText=" Price" />
                    

            </Columns>
    </asp:GridView>
    </center>
</asp:Content>

