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

public partial class addtocart2 : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        String st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
       
    }
}