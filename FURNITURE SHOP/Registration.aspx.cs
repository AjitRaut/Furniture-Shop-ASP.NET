using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);

        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd=new SqlCommand("insert into Registration (username,email,gender,address,phone,password,cpassword) values(@f,@e,@g,@a,@p,@pa,@c)", cn);
        cmd.Parameters.AddWithValue("@f",TextBox1.Text);
        cmd.Parameters.AddWithValue("@e", TextBox3.Text);
        cmd.Parameters.AddWithValue("@g", DropDownList1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@a", TextBox5.Text);
        cmd.Parameters.AddWithValue("@p", TextBox6.Text);
        cmd.Parameters.AddWithValue("@pa", TextBox7.Text);
        cmd.Parameters.AddWithValue("@c", TextBox8.Text);
            cmd.ExecuteNonQuery();
cn.Close();
Response.Write("<script language='javascript'>alert('Record Registered Successfully')</script>");
ClearText();
    }
    private void ClearText()
    {
        TextBox1.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;
        TextBox7.Text = string.Empty;
        TextBox8.Text = string.Empty;
    }

}