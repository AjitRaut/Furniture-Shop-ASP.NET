<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Registration1.aspx.cs" Inherits="Registration1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        *
    {
        margin:0;
        padding:0;
     }
        .style1
        {
            height: 46px;
        }
        .style2
        {
            height: 46px;
        }
        .style3
        {
            width: 58%;
        }
        .style4
        {
            height: 46px;
            width: 58%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
    <h1 align="center">Register Users</h1>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        AutoGenerateSelectButton="True" BackColor="#CCCCCC" BorderColor="#999999" 
                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                        ForeColor="Black" Height="271px" Width="1038px">

                        <Columns>
                        <asp:BoundField DataField="uid" HeaderText="User Id"/>
                        <asp:BoundField DataField="username" HeaderText="First Nmae"/>
                        <asp:BoundField DataField="email" HeaderText="E-Mail Id"/>
                        <asp:BoundField DataField="gender" HeaderText="Gender"/>
                        <asp:BoundField DataField="address" HeaderText="Address"/>
                        <asp:BoundField DataField="phone" HeaderText="Phone No"/>
                        <asp:BoundField DataField="password" HeaderText="Password"/>
                        <asp:BoundField DataField="cpassword" HeaderText="Confirm Password"/>
                        </Columns>

                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    </table>
                    </center>
</asp:Content>

