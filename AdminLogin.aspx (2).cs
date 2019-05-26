using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace TechCompare19
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial catalog=db1; integrated security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader ad;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String qry = "select * from admin where AdminName='" + Username.Text + "' and Password='" + Password.Text + "'";
            cmd.Connection = con;
            cmd.CommandText = qry;
            con.Open();


            ad = cmd.ExecuteReader();
            if (ad.HasRows)
            {
                Response.Redirect("Admin.aspx");
                con.Close();
            }
            else
            {
                Label1.Text = "Password is incorrect";
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}