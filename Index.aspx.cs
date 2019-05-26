using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechCompare19
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Master.login.Visible = false;
                Master.logout.Visible = true;
                Master.logout.Text = "Hi "+Session["Username"].ToString();
            }
            else
            {
                Master.login.Visible = true;
                Master.logout.Visible = false;
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (Session["Username"] == null || Session["Username"] == "")
            {
                Response.Redirect("LogIn.aspx");
            }
            else if (e.CommandName == "Compare")
            {
                Session["search"] = e.CommandArgument.ToString();
                Response.Redirect("result.aspx");
            }
        }
    }
}