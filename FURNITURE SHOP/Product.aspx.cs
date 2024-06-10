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

public partial class Product : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        String st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        display();

    }
    void display()
    {
        cn.Open();
        cmd = new SqlCommand("select * from Product", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        cn.Close();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Assign")
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            Response.Redirect("View Details.aspx?x=" + id);
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("Select * from product where category=@n", cn);
        cmd.Parameters.AddWithValue("@n", DropDownList1.Text);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        cn.Close();
    }
}