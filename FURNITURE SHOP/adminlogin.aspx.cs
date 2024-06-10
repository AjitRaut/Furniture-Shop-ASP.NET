using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class adminlogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Shriram Furniture Shop\App_Data\Register2.mdf;Integrated Security=True;User Instance=True");
  
    protected void Page_Load(object sender, EventArgs e)
    {
        String st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "shriram@gmail.com" && TextBox7.Text == "1234")
        {
            Session["username"] = TextBox1.Text;
            Session["buyitems"] = null;

            Label1.Visible = true;
            Label1.Text = "Log In SuccessFully";
            Label1.ForeColor = System.Drawing.Color.Green;
            Response.Write("<script>alert('Congrats your login is successfuly')</script>");
            Response.Redirect("homeadmin.aspx");
            

        }
        else
        {
            Response.Write("<script>alert('Invalid Password OR Username')</script>");
            Label1.Visible = true;
            Label1.Text = "Invalid Password OR Username";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        

    }
}