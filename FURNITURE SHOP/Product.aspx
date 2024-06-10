<%@ Page Title="" Language="C#" MasterPageFile="~/Shriram.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        *{
           text-decoration:none;
          }
        .style1
        {
            height: 30px;
        }
        .style2
        {
           
        }
        .style3
        {   
           width: 960px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="background-color: #FFFFCC">
    <table style=" width:100%; padding-bottom:7px;">
  <tr>
  <td style="text-align:right" bgcolor="#FF9900">
  <b style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: normal; text-transform: capitalize; color: #000000">Category:</b>
      <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
          ForeColor="Black" BackColor="#FF9900">
          <asp:ListItem>Bed</asp:ListItem>
          <asp:ListItem >Study Table</asp:ListItem>
          <asp:ListItem>tv unit</asp:ListItem>
          <asp:ListItem>sofa</asp:ListItem>
          <asp:ListItem>Shoe Rack</asp:ListItem>
      </asp:DropDownList>
      <asp:Button ID="Button1" runat="server" Text="search" 
          onclick="Button1_Click1" BackColor="#FF9900" BorderColor="Black" 
          BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="Black" /><span>
           
  </td>
  </tr>
  </table>
    <div>
    
       <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="20" 
        CellSpacing="10" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" 
        RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" 
            onitemcommand="DataList1_ItemCommand">
        <ItemTemplate>
        <table>
            
           <tr>
             <td style="text-align:center;width:100%" >
             <b>Product Name:</b>
                 <asp:Label ID="Label4" runat="server" Text='<%# Eval("pname") %>' Font-Bold="True" 
                     Font-Names="Arial Black" ForeColor="White" BackColor="#003366" 
                     Width="100%"></asp:Label>
             </td>
             </tr>
             <tr>
             <td style="text-align:center">
                 <asp:Image ID="Image2" runat="server" Height="270" Width="100%" 
                     BorderColor="#CC0000" BorderWidth="2px" ImageUrl='<%# Eval("image")%>' />
             </td>
             </tr>
        <tr>
             <td style="text-align:center">
                 <asp:Label ID="Label5" runat="server" Text="Price Rs:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="White" style="text-align:center" 
                     BackColor="#003366"></asp:Label>
                     <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" 
                     Font-Names="Arial" ForeColor="White" style="text-align:center" 
                     BackColor="#003366"></asp:Label><b style="background-color: #003366; color: #FFFFFF;">Rs/-</b>
             </td>
             </tr>
        <tr>
             <td style="text-align:center" class="style1">
              <asp:Label ID="Label1" runat="server" Text="Quantity:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="White" style="text-align:center" 
                     BackColor="#003366"></asp:Label>
                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("quantity") %>' Font-Bold="True" 
                     Font-Names="Arial" ForeColor="White" style="text-align:center" 
                     BackColor="#003366"></asp:Label>
             </td>
             </tr>
             <tr>
             <td style="text-align:center" >
             <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Assign" 
                     CommandArgument='<%# Eval("pid") %>' Font-Bold="True" Font-Names="Arial Black" 
                     Font-Size="Large">View Details</asp:LinkButton>
             </td>
             </tr>
        </table>
        </ItemTemplate>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" HorizontalAlign="Center" Width="350px" />
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </div>
</asp:Content>

