using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class FeedbackCrystelreport : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    ReportDocument rprt = new ReportDocument();


    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        cn.Open();
        DataSet1 ds = new DataSet1();
        SqlDataAdapter ad = new SqlDataAdapter("select * from FeedBack", cn);
        ad.Fill(ds, "FeedBack");
        CrystalReportSource1.ReportDocument.SetDataSource(ds);
        CrystalReportViewer1.DataBind();
        cn.Close();

    }
}