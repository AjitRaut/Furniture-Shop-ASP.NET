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
public partial class vieworder : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        String st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        display();
    }
    public void display()
    {
        cn.Open();
        cmd = new SqlCommand("select Purchase.uid,pname,username,address,phone,email,date,Purchase.quantity,Product.price from Purchase,Registration,Product where Purchase.uid=Registration.uid and Purchase.pid=Product.pid", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        cn.Close();
    }
}