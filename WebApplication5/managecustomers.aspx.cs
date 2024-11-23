using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class managecustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                //populate the ddl list with ids 

                shopTableAdapters.UsersTableAdapter shoptable = new shopTableAdapters.UsersTableAdapter();
                ddlID.DataSource = shoptable.GetAllCustomerIDs();
                ddlID.DataTextField = "CustomerID";
                ddlID.DataValueField = "CustomerID";
                ddlID.DataBind();


            }
        }

        protected void btnRetrieveA_Click(object sender, EventArgs e)
        {

            shopTableAdapters.UsersTableAdapter shoptable = new shopTableAdapters.UsersTableAdapter();
            //get query result into the table 

            DataTable resultCusomter = new DataTable();
            resultCusomter = shoptable.GetCustomerByIDAdmin(int.Parse(ddlID.SelectedValue.ToString()));


            //Write the record for controls 

            aFirst.Text = resultCusomter.Rows[0]["Name"].ToString();
            aSurname.Text = resultCusomter.Rows[0]["Surname"].ToString();
            aEmail.Text = resultCusomter.Rows[0]["Email"].ToString();

            aDdl.Text = resultCusomter.Rows[0]["Country"].ToString();

            aPhone.Text = resultCusomter.Rows[0]["Phone"].ToString();

            aCity.Text = resultCusomter.Rows[0]["City"].ToString();
            aPost.Text = resultCusomter.Rows[0]["PostCode"].ToString();
            aAdress.Text = resultCusomter.Rows[0]["Adress"].ToString();

            aUser.Text = resultCusomter.Rows[0]["CustomerUsername"].ToString();
            aPsw.Text = resultCusomter.Rows[0]["CustomerPsw"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            shopTableAdapters.UsersTableAdapter shoptable = new shopTableAdapters.UsersTableAdapter();
            shoptable.UpdateCustomer(aFirst.Text, aSurname.Text, decimal.Parse(aPhone.Text), aEmail.Text, aDdl.SelectedItem.Text, aCity.Text, aPost.Text, aAdress.Text, int.Parse(ddlID.SelectedValue.ToString()));

            Response.Redirect(Request.RawUrl);

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            shopTableAdapters.UsersTableAdapter shoptable = new shopTableAdapters.UsersTableAdapter();
            shoptable.DeleteCustomer(int.Parse(ddlID.SelectedValue.ToString()));

            Response.Redirect(Request.RawUrl);
        }
    }
}