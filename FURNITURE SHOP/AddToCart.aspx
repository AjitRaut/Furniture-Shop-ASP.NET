<%@ Page Title="" Language="C#" MasterPageFile="~/Shriram.master" AutoEventWireup="true" CodeFile="AddToCart.aspx.cs" Inherits="AddToCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" style="margin:0 auto">
<h2 style="text-decoration: underline overline blink; color: #000099;">You Have Following Product In Your Cart</h2>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
        ForeColor="Black" Font-Names="Arial Black" NavigateUrl="~/Product.aspx">Continue Shopping</asp:HyperLink>
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" 
        EmptyDataText="No Product Available In Shopping Cart" Font-Bold="True" 
        ForeColor="Black" Height="232px" ShowFooter="True" Width="89%">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sr.No">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pid" HeaderText="Product Id">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="image" HeaderText="Product Image">
                <ControlStyle Height="300px" Width="350px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:ImageField>
            <asp:BoundField DataField="pname" HeaderText="Product Name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="tprice" HeaderText="Total Price" />
            <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" Text="PlaceOrder" BackColor="Black" 
        Font-Bold="True" ForeColor="White" Height="40px" Width="92px"/>
        </div>
</asp:Content>

