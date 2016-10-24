using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con;
    SqlDataAdapter adp;
    SqlDataAdapter adp1;
    SqlDataAdapter adp2;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"]!=null)
        {
            string user = Session["user"].ToString();
            display();
        }
        else
        {
            Response.Redirect("default.aspx");
        }
       
        
    }

    private void display()
    {
        string user = Session["user"].ToString();
        con = new SqlConnection(constr);
        ds = new DataSet();
        DataSet ds1 = new DataSet();
        DataSet ds2 = new DataSet();
        adp = new SqlDataAdapter("select (image) from lpgimage where username='"+Session["user"]+"'", con);
        adp1 = new SqlDataAdapter("select * from lpgdetails where username='" + Session["user"] + "'", con);
        adp2 = new SqlDataAdapter("select * from lpgbook where username='" + Session["user"] + "'", con);
        adp1.Fill(ds1);
        adp2.Fill(ds2);
        adp.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
        Image2.ImageUrl = ds.Tables[0].Rows[0][0].ToString();
        Label8.Text= ds1.Tables[0].Rows[0][1].ToString();
        Label25.Text = ds1.Tables[0].Rows[0][3].ToString();
        Label10.Text = ds1.Tables[0].Rows[0][1].ToString();
        Label11.Text= ds1.Tables[0].Rows[0][2].ToString();
        Label12.Text = ds1.Tables[0].Rows[0][3].ToString();
        Label13.Text = ds1.Tables[0].Rows[0][4].ToString();
        Label14.Text = ds1.Tables[0].Rows[0][5].ToString();
        if(ds2.Tables[0].Rows.Count>0)
        {
            Label4.Text = ds2.Tables[0].Rows[0][2].ToString();
            Label5.Text = ds2.Tables[0].Rows[0][1].ToString();
            Label6.Text = ds2.Tables[0].Rows[0][3].ToString();
            Label7.Text = ds2.Tables[0].Rows[0][5].ToString();
            Label20.Text = ds2.Tables[0].Rows[0][4].ToString();
        }
        else
        {

        }
    }

   

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string user = Session["user"].ToString();
        string relpath = "img/" + FileUpload1.FileName;
        string abspath = Server.MapPath("img") + "\\" + FileUpload1.FileName;
        FileUpload1.SaveAs(abspath);
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        string qry = "update lpgimage  set image=@img where username='" + Session["user"] + "'";
        cmd = new SqlCommand(qry, con);
        SqlParameter para = new SqlParameter("@img", relpath);
        cmd.Parameters.Add(para);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        display();
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["user"] != null)
        {
            Session.Abandon();
            Response.Redirect("default.aspx");
        }
        else
        {
            Response.Redirect("default.aspx");
        }
        //Response.Redirect("default4.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Button1.Visible = false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Button1.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string user = Session["user"].ToString();
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd1 = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        string ds;
        ds = DateTime.Now.ToShortDateString();
        string qry = "update lpgbook  set book=1 where username='" + Session["user"] + "'";
        string qry1 = "update lpgbook  set nocyc = nocyc - @s where username='" + Session["user"] + "'";
        string qry2 = "update lpgbook  set  lastdate = @dss where username='" + Session["user"] + "'";
       
        cmd = new SqlCommand(qry, con);
        cmd1 = new SqlCommand(qry1, con);
        cmd2 = new SqlCommand(qry2, con);
        SqlParameter para = new SqlParameter("@dss", ds);

        SqlParameter para1 = new SqlParameter("@s", DropDownList1.Text);
        cmd1.Parameters.Add(para1);
        cmd2.Parameters.Add(para);
        con.Open();
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        cmd2.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Booking Done Details has been Mail to Your Registered Id')</script>");
        Panel1.Visible = false;
        Button1.Visible = true;
        display();
    }
}