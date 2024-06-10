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


public partial class FeedBack : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;


    protected void Page_Load(object sender, EventArgs e)
    {
        string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
    
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into FeedBack (Fullname,MobileNo,Emailid,Message) values(@F,@M,@E,@MS)", cn);
        cmd.Parameters.AddWithValue("@F", TextBox1.Text);
        cmd.Parameters.AddWithValue("@M", Convert.ToInt64(TextBox2.Text));
        cmd.Parameters.AddWithValue("@E", TextBox3.Text);
        cmd.Parameters.AddWithValue("@MS", TextBox4.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<Script language='javascript'>alert('FeedBack Sent Successfully')</Script>");


    }
}