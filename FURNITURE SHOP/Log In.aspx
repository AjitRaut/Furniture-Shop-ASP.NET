<%@ Page Title="" Language="C#" MasterPageFile="~/Shriram.master" AutoEventWireup="true" CodeFile="Log In.aspx.cs" Inherits="Log_In" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        *{
   margin:0;
   padding:0;
 }
    
        .style1
        {
            height: 59px;
        }
        .style2
        {
            height: 44px;
        }
        .style3
        {
            width: 50%;
        }
        .style4
        {
            width: 161px;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" style="background-color: #FFFFCC; width: 100%">
    <br />
    <br />
    <br />
<center>
<table align="center" 
            style="border: 1px solid #000000; width: 500px; height: 250px; background-color: #C0C0C0" 
        bgcolor="#FF2D2D" border="1px" bordercolor="Black" bordercolordark="Black" 
        cellpadding="1" cellspacing="0">
            <tr>
                <td colspan="2" align="center" class="style2" bordercolor="Black">
                    <h1 style="border: 1px solid #000000; background-color:#C47500; font-size: x-large; font-weight: bolder; font-style: normal; font-family: Arial, Helvetica, sans-serif; text-transform: capitalize; color: #000000; height: 50px; font-variant: small-caps; width: 100%;" 
                        align="center">Log In</h1></td>
                    </tr>
                <tr>
                <td align="center" bordercolor="Black" class="style3">
                    <b>E-Mail Id:</b></td>
                     <td class="style4">
                         <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="250px" 
                             BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" 
                             ForeColor="Black"></asp:TextBox>
                    </td>

            </tr>
                <td align="center" bordercolor="Black" class="style3">
                    <b>Password:</b></td>
                <td class="style4">
                    <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="250px" 
                        TextMode="Password" BorderColor="Black" BorderStyle="Solid" 
                        BorderWidth="1px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" bordercolor="Black">
                    <asp:Button ID="Button1" runat="server" Text="Log In" Font-Bold="True" 
                        Font-Size="Large" ForeColor="Black" Height="30px" Width="90px" 
                        onclick="Button1_Click" BackColor="#FF9900" BorderColor="Black" 
                        BorderStyle="Solid" BorderWidth="1px"/></td></tr>
             <tr>
             <td align="center" bordercolor="Black" class="style3">
             
                            <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
             </td>
                        <td align="right" class="style4">
                        <b>Did You Have Account?</b>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="Sign Up " Font-Bold="True" 
                                Font-Size="Large" ForeColor="#0099FF" NavigateUrl="~/Registration.aspx"></asp:HyperLink>
                        </td>
            </tr>

        </table>
        </center>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </div>
</asp:Content>

