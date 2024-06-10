using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class Log_In : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st = System.Configuration.ConfigurationManager.AppSettings["cn"];
        cn = new SqlConnection(st);

        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("product2.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter sda = new SqlDataAdapter("Select * from Registration where email='" + TextBox1.Text + "' and password='" + TextBox7.Text + "'", cn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        SqlCommand cmd = new SqlCommand("select uid,username,password from Registration where username=@f and password=@p", cn);

        cmd.Parameters.AddWithValue("@f", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p", TextBox7.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable ds = new DataTable();
        cmd.ExecuteNonQuery();
        sda.Fill(ds);
        cn.Close();
        if (dt.Rows.Count > 0 && dt.Rows.Count == 1)
        {
             Session["username"] = TextBox1.Text;
            Session["buyitems"] = null;
            
            Label1.Visible = true;
            Label1.Text = "Log In SuccessFully";
            Label1.ForeColor = System.Drawing.Color.Green;
            int id = Convert.ToInt32(dt.Rows[0][0].ToString());
            String custname = dt.Rows[0][1].ToString();
            Response.Write("<script>alert('Congrats your login is successfuly')</script>");
            Response.Redirect("product2.aspx?username=" + custname + "&uid=" + id);

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Information";
            Label1.ForeColor = System.Drawing.Color.Red;
            Response.Write("<script>alert('Your username and Password is incorrect')</script>");
            TextBox1.Text = "";
            TextBox7.Text = "";
        }
        
        /*if (dt.Rows.Count == 1)
        {
            Session["username"] = TextBox1.Text;
            Session["buyitems"] = null;
            Response.Redirect("product2.aspx");
            Label1.Visible = true;
            Label1.Text = "Log In SuccessFully";
            Label1.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Information";
            Label1.ForeColor = System.Drawing.Color.Red;
        }*/
    }
}