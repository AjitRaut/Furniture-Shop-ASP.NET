using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddToCart : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
 
        if (!IsPostBack)
        {
            if (Session["buyitems"] == null)
            {

                Button1.Enabled = false;
            }
            else
            {
                Button1.Enabled = true;
            }

            Session["addproduct"] = "false";
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("pid");
            dt.Columns.Add("pname");
            dt.Columns.Add("image");
            dt.Columns.Add("price");
            dt.Columns.Add("quantity");
            dt.Columns.Add("tprice");

            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {
                    dr = dt.NewRow();
                    string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
                    cn = new SqlConnection(st);

                    SqlDataAdapter da = new SqlDataAdapter("select * from Product where pid =" + Request.QueryString["id"],cn);
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    dr["sno"] = 1;
                    dr["pid"] = ds.Tables[0].Rows[0]["Pid"].ToString();
                    dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                    dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["quantity"] = ds.Tables[0].Rows[0]["quantity"].ToString();

                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt32(ds.Tables[0].Rows[0]["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["tprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    Button1.Enabled = true;

                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");
                }
            
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    int sr;
                    sr = dt.Rows.Count;

                    dr = dt.NewRow();
                    dr = dt.NewRow();
                    string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
                    cn = new SqlConnection(st);

                    SqlDataAdapter da = new SqlDataAdapter("select * from Product where pid =" + Request.QueryString["id"],cn);
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    dr["sno"] = sr = 1;
                    dr["pid"] = ds.Tables[0].Rows[0]["Pid"].ToString();
                    dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                    dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                    dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                    dr["quantity"] = ds.Tables[0].Rows[0]["quantity"].ToString();

                    int price = Convert.ToInt32(ds.Tables[0].Rows[0]["price"].ToString());
                    int quantity = Convert.ToInt32(ds.Tables[0].Rows[0]["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["tprice"] = totalprice;

                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    Session["buyitems"] = dt;
                    Button1.Enabled = true;

                    GridView1.FooterRow.Cells[5].Text = "Total Amount";
                    GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    Response.Redirect("AddToCart.aspx");
                }
            }
              else
            {
                dt = (DataTable)Session["buyitems"];
                GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if(GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
            }
        }

            string OrderDate = DateTime.Now.ToShortDateString();
            Session["OrderDate"]= OrderDate;
            orderid();
        }

    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int totalprice = 0;
        while (i < nrow)
        {
            totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["price"].ToString());
            i = i + 1;
        }
        return totalprice;
    }
    public void orderid()
    {
        string alpha = "abCdefghijklmNopqrStuvwXyz123456789";
        Random r = new Random();
        char[] myArray = new char[5];
        for (int i = 0; i < 5; i++)
        {
            myArray[i] = alpha[(int)(35 * r.NextDouble())];

        }
        string orderid;
        orderid = "Order-Id:" + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString()
            + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
        Session["Orderid"] = orderid;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];

        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                break;
            }
        }

        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }
        Session["buyitems"] = dt;
        Response.Redirect("AddToCart");
    }

    protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1;i++ )
            {
                string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
                cn = new SqlConnection(st);

                cn.Open();
                cmd = new SqlCommand("insert into Orderdetails (oid,sno,pid,pname,price,quantity,odate) values('" + Session["oid"] + ",'" + dt.Rows[i]["sno"] + "," + dt.Rows[i]["pid"] + ",'" + dt.Rows[i]["pname"] + "'," + dt.Rows[i]["price"] + "," + dt.Rows[i]["quantity"] + ",'" + Session["oid"] + ")",cn);
                cmd.ExecuteNonQuery();   
                cn.Close();

        }
        if( Session["username"] == null)
        {
            Response.Redirect("Log In.aspx");
        }
        else
        {
            if(GridView1.Rows.Count.ToString() == "0")
            {
                Response.Write("<script language='javascript'>alert('your cart Is Empty.You cannot Place An order')</script>");
            }
            else
            {
                Response.Redirect("PlaceOrder.aspx");
            }
        }
}
}