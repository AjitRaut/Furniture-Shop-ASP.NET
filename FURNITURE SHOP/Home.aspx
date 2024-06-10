<%@ Page Title="" Language="C#" MasterPageFile="~/Shriram.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    *{
        margin:0%;
        padding:0%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  

    <table style="width:100%">
           <tr style="width:100%;height:300px">
    <td colspan="3">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="TIMER">
                </asp:Timer>
                <asp:Image ID="Image2" runat="server" Height="400px" Width="100%" BackColor="White" BorderStyle="Double" BorderColor="#333333" />
            </ContentTemplate>
        </asp:UpdatePanel>
           </td>
</tr>
  </table> 
  <br /> 
  <div>
  <h2 align="center" 
          
          style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bolder; text-align: center; background-color: #FF9900; height: 40px; color: #FFFFFF;">New Arrival</h2>
  <br />
  <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="20" 
        CellSpacing="10" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" 
        RepeatColumns="3" RepeatDirection="Horizontal" Width="100%"  onitemcommand="DataList1_ItemCommand" >
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
                     BackColor="#003366"></asp:Label><b style="background-color: #003366; color: #FFFFFF;">Rs/-</b><b style="background-color: #003366; color: #FFFFFF; text-decoration: line-through;">45000Rs/-</b>
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
            <!--<tr>
                <td style="text-align:center">
                    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#990000" 
                        CommandArgument='<%# Eval("pid") %>' CommandName="AddToCart" Font-Bold="True" 
                        Font-Size="Medium" Font-Underline="True" ForeColor="White" Height="40px" 
                        Text="Add To Cart" Width="154px" />
                    <td>
            </tr>-->
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
  <br />
  <div>
  <h2 align="center" 
          
          style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bolder; text-align: center; background-color: #FF9900; height: 40px; color: #FFFFFF;">
      Features</h2>
      <br />
  
  <asp:DataList ID="DataList2" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="20" 
        CellSpacing="10" ForeColor="Black" GridLines="Both" HorizontalAlign="Center" 
        RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" 
            >
        <ItemTemplate>
        <table>
             <tr>
             <td style="text-align:center;margin-top:20px">
                 <asp:Image ID="Image2" runat="server" Height="270" Width="85%" 
                     BorderColor="#CC0000" BorderWidth="2px" ImageUrl='<%# Eval("image")%>' />
             </td>
             </tr>
             <tr>
             <td style="text-align:center;width:100%" >
             <b>Product Name:</b>
                 <asp:Label ID="Label4" runat="server" Text='<%# Eval("description") %>' Font-Bold="True" 
                     Font-Names="Arial Black" ForeColor="White" BackColor="#003366" 
                     Width="100%"></asp:Label>
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

