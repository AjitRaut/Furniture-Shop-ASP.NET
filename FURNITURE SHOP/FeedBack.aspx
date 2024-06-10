<%@ Page Title="" Language="C#" MasterPageFile="~/Shriram.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style14
    {
        font-size: large;
    }
    .style17
    {
        color: #FFFF66;
    }
    .style15
    {
        font-size: large;
        color: #FFFFFF;
    }
    .style16
    {
        color: #FFFFFF;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style14" 
        
    style="height: 647px; width: 624px; margin-left: 368px; background-color: #FF9900; margin-top: 28px;">
    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />&nbsp;&nbsp;&nbsp; <span class="style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
       <h2 align="center">Send FeedBack</h2>
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label4" runat="server" CssClass="style15" Text="Full Name"></asp:Label>
    </strong><span class="style16"><strong>&nbsp;:</strong></span>
    <asp:TextBox ID="TextBox1" runat="server" Height="34px" 
            style="margin-left: 5px" Width="386px" ></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Enter your name" style="color: #FF0000; font-size: small;" 
            ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;<br />
&nbsp;<br /><span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <strong>&nbsp; &nbsp; Mobile no :</strong>
        <asp:TextBox 
            ID="TextBox2" runat="server" Height="34px" 
            style="margin-left: 0px" Width="386px"></asp:TextBox>
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage=" Enter Your Mobile No" 
            style="color: #FF0000; font-size: small"></asp:RequiredFieldValidator>
        <br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" style="color: #FFFFFF" Text="Email id"></asp:Label>
    </strong>&nbsp;<span class="style16"><strong>:</strong></span>&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="34px" 
            style="margin-left: 0px" Width="386px"></asp:TextBox>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Email id" 
            style="color: #FF3300; font-size: small"></asp:RequiredFieldValidator>
        <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <strong>
    <asp:Label ID="Label6" runat="server" style="color: #FFFFFF" Text="Message"></asp:Label>
    </strong>&nbsp;<span class="style16"><strong>: 
    <asp:TextBox ID="TextBox4" runat="server" Height="34px" 
            style="margin-left: 1px" Width="386px"></asp:TextBox>
        </strong></span>
    <br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="45px" 
            style="background-color: #33CCFF; margin-left: 0px; margin-right: 90px;" Text="Submit" 
            Width="268px" onclick="Button2_Click" />
</div>
</asp:Content>

