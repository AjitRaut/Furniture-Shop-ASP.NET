<%@ Page Title="" Language="C#" MasterPageFile="~/Shriram.master" AutoEventWireup="true" CodeFile="adddtocart.aspx.cs" Inherits="adddtocart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="style14">Customer Name :</span><asp:Label ID="Label4" 
        runat="server" Text="Label"></asp:Label>
    <br class="style14" />
    <span class="style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Custome Id:</span><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    <br class="style14" />
    <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" 
        RepeatDirection="Horizontal" style="margin-left: 0px" Width="973px" 
        RepeatColumns="4">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>MOBILE DETAILS</HeaderTemplate>
            <ItemTemplate>
            <b>Model Name:</b><br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>' /><br />
            
            <b>Image:</b><br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="150" Width="150" ImageAlign="Middle" style="padding-left:40px"/><br />
            
            <b>Price:</b><br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>' /><br /> 
            <asp:LinkButton ID="LinkButton1" runat="server" Text="View Description" CommandName="Assign" CommandArgument='<%# Eval("pid") %>'></asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" Text="Add to Cart" CommandName="Add" CommandArgument='<%# Eval("pid") %>'></asp:LinkButton>

            </ItemTemplate>
        
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" 
                ForeColor="White" />
            <ItemStyle BackColor="White" />
            <SelectedItemStyle BackColor="#000099" 
                Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>

