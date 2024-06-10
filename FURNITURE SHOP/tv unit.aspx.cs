using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tv_unit : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from Product where category=@t", cn);
        cmd.Parameters.AddWithValue("@t", "Tv Unit");
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        cn.Close();
    }
}