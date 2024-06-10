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

public partial class addfn : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from fn", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cn.Close();
        cn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String Filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Image/+Filename"));
            String f1 = "~/Image/" + Filename;
            cn.Open();
            cmd = new SqlCommand("insert into fn (pname,price,category,image,quantity,description) values(@pn,@pr,@c,@i,@q,@d)", cn);
            cmd.Parameters.AddWithValue("@pn", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pr", TextBox2.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@i", f1.ToString());
            cmd.Parameters.AddWithValue("@q", Convert.ToInt32(TextBox6.Text));
            cmd.Parameters.AddWithValue("@d", TextBox7.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script language='javascript'>alert('Product Saved Successfully')</script>");

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[3].Text;
        DropDownList1.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox6.Text = GridView1.SelectedRow.Cells[5].Text;
        TextBox7.Text = GridView1.SelectedRow.Cells[6].Text;
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String Filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Image/+Filename"));
            String f1 = "~/Image/" + Filename;
            cn.Open();
            cmd = new SqlCommand("update fn set pname=@pn,price=@pr,category=@c,image=@i,quantity=@q,description=@d where pid=@id", cn);
            cmd.Parameters.AddWithValue("@pn", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pr", TextBox2.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@i", f1.ToString());
            cmd.Parameters.AddWithValue("@q", Convert.ToInt32(TextBox6.Text));
            cmd.Parameters.AddWithValue("@d", TextBox7.Text);
            cmd.Parameters.AddWithValue("@id", Label1.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script language='javascript'>alert('Product Update Successfully')</script>");
            display();
        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("delete from fn where pid=@id", cn);
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Label1.Text));
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script language='javascript'>alert('Product Delete Successfully')</script>");
        display();

    }
}