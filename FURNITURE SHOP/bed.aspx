<%@ Page Title="" Language="C#" MasterPageFile="~/Shriram.master" AutoEventWireup="true" CodeFile="bed.aspx.cs" Inherits="bed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="20" 
        CellSpacing="10" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" 
        RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" 
            >
        <ItemTemplate>
        <table>
            
           <tr>
             <td style="text-align:center;width:100%" >
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
                     BackColor="#003366"></asp:Label>
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
      <!-- <tr>
             <td style="text-align:center">
                 <asp:LinkButton ID="LinkButton1" runat="server" Text="Add To Cart" CommandName="AddToCart" 
                     CommandArgument='<%# Eval("pid") %>' BackColor="Black" BorderWidth="3px" 
                     Font-Bold="True" Font-Size="Large" ForeColor="White" Height="48px" 
                     Width="154px" />
                    <td>
             </tr>-->
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

</asp:Content>

