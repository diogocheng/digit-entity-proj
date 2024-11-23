using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class managestaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStaff_Click()
        {
            shopTableAdapters.Admins__TableAdapter adminTable = new shopTableAdapters.Admins__TableAdapter();
            adminTable.InsertStaff(nameStaff.Text, surnameStaff.Text, usernameStaff.Text, pswStaff.Text, adressStaff.Text, emailStaff.Text, dateStaff.Text);
            Response.Redirect(Request.RawUrl);

        }

        protected void btnStaff_Click(object sender, EventArgs e)
        {
            shopTableAdapters.Admins__TableAdapter adminTable = new shopTableAdapters.Admins__TableAdapter();
            adminTable.InsertStaff(nameStaff.Text, surnameStaff.Text, usernameStaff.Text, pswStaff.Text, adressStaff.Text, emailStaff.Text, dateStaff.Text);
            Response.Redirect(Request.RawUrl);

        }
    }
}