<%@ Page Title="" Language="C#" MasterPageFile="~/Shriram.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Product2.aspx.cs" Inherits="Product" %>

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
        }
        .style4
        {            height: 26px;
        }
        .style5
        {
            height: 28px;
        }
        #LinkButton1{
            border-radius:20px;
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
           <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" 
        ImageUrl="~/Image/Cart-icon.png" Width="45px" onclick="ImageButton2_Click" 
          ImageAlign="AbsBottom" BorderColor="Black" />
  </td>
  </tr>
  </table>
   <table align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold;width="100%">
    <tr>
    <td style="text-align:center" class="style4">
  <b>Customer Name:</b>
  <asp:Label ID="Label7" runat="server" Text="Customer Name:"></asp:Label>
  </td>
  <br />
  </tr>
  <tr>
  <td style="text-align:center" class="style3">
  <b>Customer id:</b>
  <asp:Label ID="Label9" runat="server" Text="Customer Id:"></asp:Label>
  </td>
  </tr>
  </table>
  </div>
    <div>
       <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="20" 
        CellSpacing="10" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" 
        RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" 
            onitemcommand="DataList1_ItemCommand" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
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
             <td style="text-align:center" class="style5">
                 <asp:Label ID="Label5" runat="server" Text="Price Rs:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="White" style="text-align:center" 
                     BackColor="#003366"></asp:Label>
                     <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" 
                     Font-Names="Arial" ForeColor="White" style="text-align:center" 
                     BackColor="#003366"></asp:Label><b style="background-color: #003366; color: #FFFFFF;">Rs/-</b>
             </td>
             </tr>
            <tr>
                <td class="style1" style="text-align:center">
                    <asp:Label ID="Label1" runat="server" BackColor="#003366" Font-Bold="True" 
                        Font-Names="Arial" ForeColor="White" style="text-align:center" Text="Quantity:"></asp:Label>
                    <asp:Label ID="Label2" runat="server" BackColor="#003366" Font-Bold="True" 
                        Font-Names="Arial" ForeColor="White" style="text-align:center" 
                        Text='<%# Eval("quantity") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FF9900" 
                        CommandArgument='<%# Eval("pid") %>' CommandName="AddToCart" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="White" Height="40px" 
                        Text="Add To Cart" Width="154px" />
                    <td>
                    </td>
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        CommandArgument='<%# Eval("pid") %>' CommandName="Assign" Font-Bold="True" 
                        Font-Names="Arial Black" Font-Size="Large">View Details</asp:LinkButton>
                </td>
            </tr>
            </caption>
        </table>
        </ItemTemplate>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" HorizontalAlign="Center" Width="350px" />
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    </div>
    </asp:Content>



