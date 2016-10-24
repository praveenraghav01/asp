using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class auto : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter adp;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.QueryString["name"].ToString();
        con = new SqlConnection("server=DESKTOP-26K1337;database=Asp;uid=sa;pwd=root");
        adp = new SqlDataAdapter("select name from lpgdetails where name like '" + name + "%'", con);
        ds = new DataSet();
        adp.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
      
            Response.Write("<option>" + ds.Tables[0].Rows[i][0].ToString() + "</option>");
          
        }
    }
}
