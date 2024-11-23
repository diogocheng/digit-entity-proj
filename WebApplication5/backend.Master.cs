using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class backend : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = "Welcome" + Session["user"] + "";
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("managecustomers.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("managesubscriptions.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("managestaff.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("managetestimonials.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("manageanalysis.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("managecontacts.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}