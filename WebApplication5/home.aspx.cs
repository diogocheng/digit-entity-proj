using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int CustomerID = Convert.ToInt32(Session["CustomerID"]);
        }

        protected void btn1_Click()
        {
            Response.Redirect("contacts.aspx");
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Response.Redirect("testimonials.aspx");
        }

        protected void btn3_Click(object sender, EventArgs e)
        {

            Response.Redirect("price.aspx");
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            int CustomerID = Convert.ToInt32(Session["CustomerID"]);
            shopTableAdapters.UsersTableAdapter shoptable = new shopTableAdapters.UsersTableAdapter();
            DataTable resultCusomter = new DataTable();
            resultCusomter = shoptable.GetCustomerByIDAdmin(CustomerID);
           string planName= resultCusomter.Rows[0]["PlanName"].ToString();

            if (planName.Length > 0)

            {
                Response.Redirect("myaccount.aspx");

            }

        else
            {
                Response.Redirect("price.aspx");

            }


        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("contacts.aspx");
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}