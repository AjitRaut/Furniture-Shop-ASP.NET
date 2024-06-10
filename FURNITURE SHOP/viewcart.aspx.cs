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

public partial class view_cart : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        String st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
       
        Label5.Text = System.DateTime.Today.ToShortDateString();
        if (!IsPostBack)
        {
            displaydata();
            displaydata1();
        }
    }
    void displaydata()
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        int i = Convert.ToInt32(Request.QueryString["x"]);
        cn.Open();
        string d1 = System.DateTime.Today.ToShortDateString();
        cmd = new SqlCommand("select Product.pname,Product.image,Purchase.pid,Purchase.quantity,Purchase.price from Purchase,Product where Purchase.pid=Product.pid and date=@d", cn);
        cmd.Parameters.AddWithValue("@d", d1);
        
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);
        cmd.ExecuteNonQuery();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        GridView1.FooterRow.Cells[3].Text = "Total";
        GridView1.FooterRow.Cells[4].Text = dt.Compute("Sum(Quantity)", "").ToString();
        GridView1.FooterRow.Cells[5].Text = dt.Compute("Sum(Price)", "").ToString();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    void displaydata1()
    {

        int i = Convert.ToInt32(Request.QueryString["x"]);
        cn.Open();
        cmd = new SqlCommand("select purchase.uid,username,address,phone from Purchase,Registration  where Purchase.uid=Registration.uid and Purchase.uid=@id", cn);
        cmd.Parameters.AddWithValue("@id", i);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        cmd.ExecuteNonQuery();
        da.Fill(dt);
        Label1.Text = dt.Rows[0][0].ToString();
        Label2.Text = dt.Rows[0][1].ToString();
        Label3.Text = dt.Rows[0][2].ToString();
        Label4.Text = dt.Rows[0][3].ToString();

        cn.Close();
    }
     protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // int Id = Convert.ToInt32(this.GridView1.SelectedRow.RowIndex);
        int Id = Convert.ToInt32(this.GridView1.SelectedRow.Cells[1].Text);
        cn.Open();
        cmd = new SqlCommand("delete from Purchase where pid=@i", cn);
        cmd.Parameters.AddWithValue("@i", Id);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);
        cmd.ExecuteNonQuery();
        GridView1.DataSource = dt;
        GridView1.DataBind();
        displaydata();
        cn.Open();
        cmd = new SqlCommand("update Product set quantity=quantity+1 where pid=@i", cn);//product qty updated after product from order is cancelled
        cmd.Parameters.AddWithValue("@i", Id);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
         cn.Open();
         cmd = new SqlCommand("insert into paybill(uid,Date,Amount)values(@c,@d,@am)", cn);
        cmd.Parameters.AddWithValue("@c", Label1.Text);
        cmd.Parameters.AddWithValue("@d", Label5.Text);
        cmd.Parameters.AddWithValue("@am", Convert.ToInt32(GridView1.FooterRow.Cells[5].Text));
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script>alert(' Thank You !!!!!!!! Your order is placed Successfully')</script>");
  
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("delete from paybill where uid=@c and Date=@d", cn);
        cmd.Parameters.AddWithValue("@c", Label1.Text);
        cmd.Parameters.AddWithValue("@d", Label5.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script>alert(' Thank You !!!!!!!! Your order is Cancelled Successfully')</script>");
        displaydata();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("BillCrystelReport.aspx?id=" + Label1.Text + "&date=" + Label5.Text);
    }

    }