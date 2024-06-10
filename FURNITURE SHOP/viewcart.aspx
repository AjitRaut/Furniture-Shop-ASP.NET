﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Shriram.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="view_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 28px;
        }
        #Label6
        {
            margin-top:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="1" 
        style="width: 612px; font-family: Arial, Helvetica, sans-serif; font-size: large; color: #FFFFFF; font-style: normal; font-weight: bolder;" 
        bgcolor="Black">
<tr>   
<td class="style8" colspan="2" align="center"><center><B>Customer Cart</B> </center>Order Date-<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>

</tr>
<tr>   
<td class="style1">Customer Id</td>
<td class="style1"> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr>   
<td class="style1">Customer Name</td>
<td class="style1"> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr>   
<td class="style15">Address</td>
<td class="style7"> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
</tr>
<tr>
<td class="style15">Contact</td>
<td class="style7"> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
</tr>
</table>
<br />
<br />
<table align="center" border="1" 
        style="width: 612px; font-family: Arial, Helvetica, sans-serif; font-size: large; color: #FFFFFF; font-style: normal; font-weight: bolder;" 
        bgcolor="Black">
<tr>
<td class="style14" colspan="0">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        HorizontalAlign="Left" 
         Width="590px" ShowFooter="True" AutoGenerateDeleteButton="True" 
        onrowdeleting="GridView1_RowDeleting" CellSpacing="2" ForeColor="Black">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
         <Columns>
            <asp:BoundField DataField="pid" HeaderText=" Product_Id" />
            <asp:BoundField DataField="pname" HeaderText="Product Name" />
            <asp:ImageField DataImageUrlField="image" HeaderText="Product Image">
                <ControlStyle Height="100px" Width="150px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:ImageField>
           
            <asp:BoundField DataField="quantity" HeaderText=" Quantity" />
            <asp:BoundField DataField="price" HeaderText=" Price" />
            
           </Columns>
    </asp:GridView></td>
</tr>
</table>
</center>
<br />
<br />
<center><asp:Label ID="Label6" runat="server" Text="Payment Mode: CASH ON DELIVERY" 
        BorderColor="#FF0066" ForeColor="Black" BackColor="#CC3300" 
        Width="400px" Height="28px" 
            
        Font-Bold="True" Font-Overline="False" Font-Size="Medium" 
        Font-Underline="True"></asp:Label><br />
<br />
    <asp:Button ID="Button1" runat="server" Text="Place Order" 
        onclick="Button1_Click1" Height="38px"  
        BackColor="#CC3300" Font-Bold="True" Font-Size="Medium" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Cancel Your Order" 
        onclick="Button2_Click1" Height="38px" style="background-color: #CC3300" 
        Font-Bold="True" Font-Size="Medium" />,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="Print Bill" Height="38px" style="background-color: #CC3300" 
        Font-Bold="True" Font-Size="Medium" /></center>


</asp:Content>

