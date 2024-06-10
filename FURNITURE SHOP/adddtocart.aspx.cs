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

public partial class adddtocart : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);
        display();
    }
    void display()
    {
        Label4.Text = Request.QueryString["fname"];
        Label5.Text = Request.QueryString["uid"];

        cn.Open();
        cmd = new SqlCommand("select * from Product", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        cn.Close();
    }
  protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adddtocart.aspx?fname=" + Label4.Text);
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Assign")
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            Response.Redirect("ProductInfo.aspx?Id=" + id);
        }
        if (e.CommandName == "Add")
        {
            cn.Open();
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            cmd = new SqlCommand("select  pname,price,quantity,from Product where pid=@p", cn);
            cmd.Parameters.AddWithValue("@p", id);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            cmd.ExecuteNonQuery();
            cn.Close();
            int pri = Convert.ToInt32(dt.Rows[0][0].ToString());//retrieve selected product price for insert into purchase table
            int q = Convert.ToInt32(dt.Rows[0][1].ToString());//quantity column
            if (q > 0)
            {
                cn.Open();
                cmd = new SqlCommand("insert into purchase (cid,pid,quantity,price,date) values(@C,@I,@Q,@PR,@D)", cn);
                cmd.Parameters.AddWithValue("@C", Convert.ToInt32(Label5.Text));
                cmd.Parameters.AddWithValue("@I", id);
                cmd.Parameters.AddWithValue("@Q", Convert.ToInt32("1"));
                cmd.Parameters.AddWithValue("@PR", pri);
                cmd.Parameters.AddWithValue("@D", System.DateTime.Today.ToShortDateString());
                cmd.ExecuteNonQuery();
                cn.Close();
                cn.Open();                                 //update quantity in product table
                cmd = new SqlCommand("update Product set quantity=quantity-1 where pid=@I", cn);
                cmd.Parameters.AddWithValue("@I", id);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<script>alert('Your Product is Added successfuly in your cart')</script>");
                // Response.Redirect("viewdetail.aspx?Id=" + id + "&uname=" + Label3.Text);
                //Response.Redirect("singleproductdetail.aspx?Id=" + id);
            }
            else
            {
                Response.Write("<script>alert('Sorry this product is out of stock')</script>");
            }
        }
    }
}