using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechCompare19
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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