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
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader ad;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String qry = "select * from login where username='" + Username.Text + "' and password='" + Password.Text + "'";
            cmd.Connection = con;
            cmd.CommandText = qry;
            con.Open();


            ad = cmd.ExecuteReader();
            if (ad.HasRows)
            {
                Session["Username"] = Username.Text;
                Response.Redirect("Index.aspx");
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
            Session["username"] = null;
            Response.Redirect("Index.aspx");
        }
    }
}