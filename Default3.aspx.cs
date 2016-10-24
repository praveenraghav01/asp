using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["conn"].ToString();
    SqlConnection con;
    SqlDataAdapter adp;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string relpath = "img/" + FileUpload1.FileName;
        string abspath = Server.MapPath("img") + "\\" + FileUpload1.FileName;
        FileUpload1.SaveAs(abspath);
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd1 = new SqlCommand();
        SqlCommand cmd2 = new SqlCommand();
        SqlCommand cmd3 = new SqlCommand();
        string qry = "Insert into lpgimage values(@id,@img) ";
        string qry1 = "insert into lpgdetails values(@id1,@name,@dob,@adharno,@state,@gen)";
        string qry2 = "insert into lpguser values(@id2,@pwd)";
        string qry3 = "insert into lpgbook  values(@id3,@da,@no,@sub,@amt,@bok)";
        cmd = new SqlCommand(qry, con);
        cmd1 = new SqlCommand(qry1, con);
        cmd2 = new SqlCommand(qry2, con);
        cmd3 = new SqlCommand(qry3, con);
        SqlParameter[] para = { new SqlParameter("@id",TextBox2.Text),
                                new SqlParameter("@img", relpath) };
        SqlParameter[] para1 = { new SqlParameter("@id1",TextBox2.Text),
                                 new SqlParameter("@name", TextBox1.Text),
                                 new SqlParameter("@dob",TextBox6.Text),
                                 new SqlParameter("@adharno",TextBox5.Text),
                                 new SqlParameter("@state",DropDownList1.Text),
                                 new SqlParameter("@gen",RadioButtonList1.Text)};
        SqlParameter[] para2 = { new SqlParameter("@id2",TextBox2.Text),
                                new SqlParameter("@pwd", TextBox3.Text) };

        SqlParameter[] para3 = { new SqlParameter("@id3",TextBox2.Text),
                                 new SqlParameter("@da", "0/0/0"),
                                 new SqlParameter("@no","6"),
                                 new SqlParameter("@sub","Yes"),
                                 new SqlParameter("@amt","150"),
                                 new SqlParameter("@bok","0")};
        cmd.Parameters.AddRange(para);
        cmd1.Parameters.AddRange(para1);
        cmd2.Parameters.AddRange(para2);
        cmd3.Parameters.AddRange(para3);
        con.Open();
        
        try
        {

            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd3.ExecuteNonQuery();
        }
        catch (Exception a)
        {
            Response.Write("<script>alert(\"Email Id already Exists!!!\")</script><br>");
            Response.Redirect("default3.aspx");
        }
        con.Close();

        Response.Redirect("default.aspx");
    }
}