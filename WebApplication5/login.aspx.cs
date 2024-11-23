using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            shopTableAdapters.UsersTableAdapter userDB = new shopTableAdapters.UsersTableAdapter();
            shop.UsersDataTable row = userDB.CheckCredentials(txtUsername.Text, txtPassword.Text);

            shopTableAdapters.Admins__TableAdapter AdminDB = new shopTableAdapters.Admins__TableAdapter();
            shop._Admins__DataTable row1 = AdminDB.CheckCredentials(txtPassword.Text, txtUsername.Text);


            if (row.Count > 0)
            {


                Session["CustomerID"] = (int)row[0]["CustomerID"];
                Session["user"] = txtUsername.Text;
                Response.Redirect("home.aspx");
             



            }
            else if (row1.Count > 0)
            {

                Session["user"] = txtUsername.Text;
                Response.Redirect("adminpanel.aspx");


            }
            else
            {

                
                lblLogin.Text = "Wrong Crendentials";
            }
        }
    }
}