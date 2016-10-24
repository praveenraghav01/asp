using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con;
    SqlDataAdapter adp;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            
            Response.Redirect("default2.aspx");
        }
        else
        {
            error.Text = "";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        ds = new DataSet();
        adp = new SqlDataAdapter("select * from lpguser where username=@id and password=@pwd", con);
        
        SqlParameter[] para = { new SqlParameter("@id", username.Text),
                                new SqlParameter("@pwd", password.Text)
                              };
       
        
        adp.SelectCommand.Parameters.AddRange(para);
        adp.Fill(ds);
        if(ds.Tables[0].Rows.Count>0)
        {
            Session["user"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("default2.aspx");
        }
        else
        {
            error.Text = "Username or Password not Match";
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Label4.Visible = false;
        password.Visible = false;
        Label5.Visible = false;
        Button1.Visible = false;
        Button2.Visible = false;
        Button3.Visible = true;
        ImageButton1.Visible = false;

        

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        ds = new DataSet();
        adp = new SqlDataAdapter("select * from lpguser where username=@id", con);
        SqlParameter para = new SqlParameter("@id", username.Text);
        adp.SelectCommand.Parameters.Add(para);
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
           string user = ds.Tables[0].Rows[0][0].ToString();
            string pas = ds.Tables[0].Rows[0][1].ToString();
            Response.Write("<script>alert('Password has been sent on Your Email')</script>");
            Label4.Visible = true;
            password.Visible = true;
            Label5.Visible = true;
            Button1.Visible = true;
            Button2.Visible = true;
            Button3.Visible = false;
            ImageButton1.Visible = true;
            // Response.Write("<script>alert(Username='user' <br>Password='pas')</script>");
        }
        else
        {
            error.Text = "Username not Match";
        }

       
       
    }
}