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


public partial class View_Details : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        display();
    }
    public void display()
    {
        int i = Convert.ToInt32(Request.QueryString["x"]);
        cn.Open();
        cmd = new SqlCommand("select * from Product where pid=@id", cn);
        cmd.Parameters.AddWithValue("id",i);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        DataList1.DataSource=ds;
        DataList1.DataBind();
        cn.Close();
    }
}