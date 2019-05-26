using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechCompare19
{
    public partial class Main1 : System.Web.UI.MasterPage
    {
        public Button login
        {
            get
            {
                return this.LogIn;
            }
        }

        public Button logout
        {
            get
            {
                return this.LogOut;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                LogIn.Visible = false;
                LogOut.Visible = true;
            }
            else
            {
                LogIn.Visible = true;
                LogOut.Visible = false;
            }
        }

        protected void LogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }

        protected void LogOut_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("Index.aspx");

        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            Session["search"] = SearchBox.Text;
            Response.Redirect("result.aspx");
        }
        
    }
}