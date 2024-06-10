<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <br />
<center>
<table align="center" 
            style="width: 590px; height: 304px; background-color: #C0C0C0">
            <tr>
                <td colspan="2" align="center" class="style1">
                    <h1 style="background-color:#FF0066; font-size: xx-large; font-weight: bold; font-style: normal; font-family: Arial, Helvetica, sans-serif; text-transform: capitalize; color: #000000;" 
                        align="center">Admin Log In</h1></td>
                    </tr>
                <tr>
                <td style="width:70%">
                    <b>E-Mail Id:</b></td>
                     <td>
                         <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="150px"></asp:TextBox>
                    </td>

            </tr>
                <td style="width:70%">
                    <b>Password:</b></td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="150px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Log In" Font-Bold="True" 
                        Font-Size="Large" ForeColor="#FF3300" Height="30px" Width="90px" 
                        onclick="Button1_Click" P BackColor="Blue"/></td></tr>
                        <tr>
             <td style="width:100%">
             
                            <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
             </td>
                       </tr>
                 </table>
        </center><br />
    </form>
</body>
</html>
