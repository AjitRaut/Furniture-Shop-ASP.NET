using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shriram : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label2.Text= "Log In As     "+ Session["username"].ToString();
            HyperLink1.Visible = false;
            Button1.Visible = true;
        }
        else
        {
            Label2.Text = "Hello You can Log IN here";
            HyperLink1.Visible = true;
            Button1.Visible = false;
        }

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
        Label2.Text = "You have log out successfully";
   
    }
    
}
