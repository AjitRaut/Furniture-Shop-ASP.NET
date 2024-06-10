using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class feedbackadmin : System.Web.UI.Page
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
        cn.Open();
        cmd = new SqlCommand("select * from FeedBack", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        cn.Close();

    }
}