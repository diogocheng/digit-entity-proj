using Azure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace WebApplication5
{
    public partial class form : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void btnhello_Click(object sender, EventArgs e)
        {
            Response.Redirect("contacts.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("price.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("testimonials.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {


            if (!(Session["CustomerID"] is null))
            {

                Response.Redirect("myaccount.aspx");



            }
            else
            {

                Response.Redirect("login.aspx");

            }

           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");

        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            if (!(Session["CustomerID"] is null))
            {

                Response.Redirect("myaccount.aspx");



            }
            else
            {

                Response.Redirect("login.aspx");

            }
        }
    }
}

  