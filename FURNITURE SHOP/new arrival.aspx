<%@ Page Title="" Language="C#" MasterPageFile="~/Shriram.master" AutoEventWireup="true" CodeFile="new arrival.aspx.cs" Inherits="new_arrival" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
             <td style="text-align:center" class="style5">
                 <asp:Label ID="Label5" runat="server" Text="Price Rs:" Font-Bold="True" 
                     Font-Names="Arial" ForeColor="White" style="text-align:center" 
                     BackColor="#003366"></asp:Label>
                     <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" 
                     Font-Names="Arial" ForeColor="White" style="text-align:center" 
                     BackColor="#003366"></asp:Label><b style="background-color: #003366; color: #FFFFFF;">Rs/-</b><b style="background-color: #003366; color: #FFFFFF; text-decoration: overline;">45000Rs/-</b>
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
                    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#990000" 
                        CommandArgument='<%# Eval("pid") %>' CommandName="AddToCart" Font-Bold="True" 
                        Font-Size="Medium" Font-Underline="True" ForeColor="White" Height="40px" 
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

</asp:Content>

