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


public partial class Home : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        String st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        display();
        display2();

    }
    void display()
    {
        cn.Open();
        cmd = new SqlCommand("select * from fn where category=@y", cn);
        cmd.Parameters.AddWithValue("@y", "new arrival");
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        cn.Close();
    }
    void display2()
    {
        cn.Open();
        cmd = new SqlCommand("select * from fn where category=@y", cn);
        cmd.Parameters.AddWithValue("@y", "features");
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        DataList2.DataSource = ds;
        DataList2.DataBind();
        cn.Close();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Assign")
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            Response.Redirect("vie details2.aspx?x=" + id);
        }
       
    }
    protected void TIMER(object sender, EventArgs e)
    {
        Random r = new Random();
        int i = r.Next(1, 5);
        Image2.ImageUrl = "~/Image/" + i.ToString() + ".jpg";
    }
   
}