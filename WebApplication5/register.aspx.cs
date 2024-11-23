using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click()
        {


            int customerID = 0;

            shopTableAdapters.UsersTableAdapter userTable = new shopTableAdapters.UsersTableAdapter();
            customerID = userTable.CreateCustomerAndID(txtFirstname.Text, txtSurname.Text, txtEmail.Text, txtUsername1.Text, txtPassword1.Text, DateTime.Now);

            Session["CustomerID"] = customerID;


            Response.Redirect("login.aspx");



        }

        protected void btnregister_Click1(object sender, EventArgs e)
        {

            int customerID = 0;

            shopTableAdapters.UsersTableAdapter userTable = new shopTableAdapters.UsersTableAdapter();
            customerID = userTable.CreateCustomerAndID(txtFirstname.Text, txtSurname.Text, txtEmail.Text, txtUsername1.Text, txtPassword1.Text, DateTime.Now);

            Session["CustomerID"] = customerID;


            Response.Redirect("login.aspx");
        }
    }
}