using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace TechCompare19
{
    public partial class Signup1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial catalog=db1; integrated security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (pass.Text == cpass.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into login values('" + fname.Text + "','" + lname.Text + "','" + uname.Text + "','" + phone.Text + "','" + pass.Text + "')", con);
                cmd.ExecuteReader();

                Response.Redirect("LogIn.aspx");
            }
            else {
                Label1.Text = "password does not match";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}