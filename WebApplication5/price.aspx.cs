using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class price : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int CustomerID = Convert.ToInt32(Session["CustomerID"]);

            if (!(IsPostBack))
            {


                int thisYear = DateTime.Now.Year;
                for (int yr = thisYear; yr < thisYear + 10; yr++)
                {
                    ddlExpiryYear.Items.Add(new ListItem(yr.ToString()));


                }

                int thisMonth = DateTime.Now.Month;
                ddlExpiryMonth.SelectedIndex = thisMonth - 1;

            }
        }

        protected void dlCatalogue_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (!(Session["CustomerID"] is null))
            {


                if (e.CommandName == "PlanID")
                {
                    int planID = Convert.ToInt32(e.CommandArgument); //get plan id 

                    Session["planID"] = planID;

                    shopTableAdapters.PlansTableAdapter plan = new shopTableAdapters.PlansTableAdapter(); //get items row from the database based on the plan id 
                    shop.PlansDataTable row = plan.GetPlanbyID(planID);


                    if (row != null && row.Count > 0)
                    {

                        imgDetailsdwad.ImageUrl = "Images/" + row[0]["PlanImage"].ToString();
                        dwdw.Text = row[0]["PlanName"].ToString();
                        lblProdDescdwa.Text = row[0]["Planfeatures"].ToString();
                        lblTotalAmount.Text = row[0]["PlanPrice"].ToString();
                        hfPlanID.Value = e.CommandArgument.ToString();
                        mvMain.SetActiveView(vDetails);
                    }


                }




            }
            else
            {

                Response.Redirect("login.aspx");

            }
        }

        protected void btnChangePlan_Click(object sender, EventArgs e)
        {
            mvMain.SetActiveView(vCatalogue);
        }

        protected void btnProceed_Click(object sender, EventArgs e)
        {
            mvMain.SetActiveView(vSummary);
        }

        protected void btnCancelBilling_Click(object sender, EventArgs e)
        {
            mvMain.SetActiveView(vCatalogue);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate("CreditCard");
            if (Page.IsValid && !(Session["CustomerID"] is null))
            {
                int customerID = (int)Session["CustomerID"];

                try
                {

                    shopTableAdapters.SubscriptionPayTableAdapter subscription = new shopTableAdapters.SubscriptionPayTableAdapter();
                    //insert order
                    shop.SubscriptionPayDataTable row = subscription.CheckE(customerID);


                    if (row.Count > 0)
                    {

                        subscription.Delete1(customerID);




                    }
                    else
                    {



                    }

                    int SubscriptionID = subscription.InsertNewSubscription(customerID, DateTime.Now, DateTime.Now.AddYears(1), Convert.ToInt32(Session["planID"]), txtLastname.Text, dwdw.Text, DateTime.Now, DateTime.Now.AddYears(1), txtCardNumber.Text);






                    //insert order detail

                    //shopTableAdapters.Subscription__TableAdapter detail = new shopTableAdapters.Subscription__TableAdapter();
                    //detail.InsertSubscription(SubscriptionID, customerID, txtLastname.Text, Convert.ToInt32(Session["planID"]), DateTime.Now, DateTime.Now.AddYears(1), dwdw.Text, txtCardNumber.Text);

                    //update user details 
                    shopTableAdapters.UsersTableAdapter user = new shopTableAdapters.UsersTableAdapter();
                    user.UpdateCustomerPay(Convert.ToInt32(Session["planID"]), dwdw.Text, txtCardNumber.Text, SubscriptionID, true, DateTime.Now, DateTime.Now.AddYears(1), customerID);



                    //save card info



                    shopTableAdapters.CardInformationTableAdapter card = new shopTableAdapters.CardInformationTableAdapter();


                    card.InsertNewCardInfo(txtCardNumber.Text, ddlCardType.SelectedItem.Text, Convert.ToInt32(ddlExpiryMonth.SelectedItem.Text), Convert.ToInt32(ddlExpiryYear.SelectedItem.Text), Convert.ToInt32(txtCVV.Text));

                    //billing info
                    shopTableAdapters.BillingInfoTableAdapter billing = new shopTableAdapters.BillingInfoTableAdapter();
                    billing.InsertNewBilling(txtCardNumber.Text, txtFirstname.Text, txtLastname.Text, txtAddress1.Text, txtAddress2.Text, txtCity.Text, ddlCountry.SelectedItem.Text, txtPostCode.Text);

                    //success message








                    string plan = Convert.ToString(Session["planID"]);

                    if (plan == "1")
                    {

                        mvMain.SetActiveView(mvBronze);



                    }
                    else if (plan == "2")
                    {

                        mvMain.SetActiveView(mvSilver);

                    }
                    else
                    {


                        mvMain.SetActiveView(mvGold);

                    }










                }
                catch (Exception ex)
                {
                    
                }
            }



        }

        protected void cvCardNumber_ServerValidate(object source, ServerValidateEventArgs args)
        {

            if (txtCardNumber.Text.Length > 4)
            {

                args.IsValid = true;

            }
            else
            {
                cvCardNumber.ErrorMessage = "Please enter valid Card NUmber";
                args.IsValid = false;

            }
        }

        protected void cvCVV_ServerValidate(object source, ServerValidateEventArgs args)
        {

            if (txtCVV.Text.Length != 3)
            {
                cvCVV.ErrorMessage = "Please enter valid CVV";
                args.IsValid = false;

            }
        }

        protected void cvExpiryDate_ServerValidate(object source, ServerValidateEventArgs args)
        {

            //Check if the expiration date is valid.

            //Get the year entered
            int ExpirationYear = Convert.ToInt32(ddlExpiryYear.SelectedValue);
            int ThisYear = DateTime.Now.Year;

            //If the expiration year is equal to today's year then check that the month is later
            if (ExpirationYear == ThisYear)
            {
                int ExpirationMonth = Convert.ToInt32(ddlExpiryMonth.SelectedValue);
                int ThisMonth = DateTime.Now.Month;
                if (ExpirationMonth < ThisMonth)
                {
                    cvExpiryDate.ErrorMessage = "The expiration date selected is in the past.";
                    args.IsValid = false;
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            mvMain.SetActiveView(vDetails);
        }

        protected void BUpdate_Click(object sender, EventArgs e)
        {
            int customerID = (int)Session["CustomerID"];

            try
            {



                shopTableAdapters.UsersTableAdapter user = new shopTableAdapters.UsersTableAdapter();
                user.UpdateBronze1(Convert.ToBoolean(BGEnder.SelectedValue), Convert.ToBoolean(BVacine.SelectedValue), BHeight.Text, BWeight.Text, Bdocument.Text, BUpload.FileName, customerID);

                if (GUpload.HasFile)
                {

                    GUpload.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "documents/" + GUpload.FileName);





                }
                else
                {


                }


            }

            catch
            {







            }
            Session["user"] = null;
            Session["CustomerID"] = null;

            mvMain.SetActiveView(mvDone);
            Response.AddHeader("REFRESH", "5;login.aspx");
        }

        protected void SUpdate_Click(object sender, EventArgs e)
        {
            int customerID = (int)Session["CustomerID"];

            try
            {



                shopTableAdapters.UsersTableAdapter user = new shopTableAdapters.UsersTableAdapter();
                user.UpdateSilver1(Convert.ToBoolean(SGender.SelectedValue), Convert.ToBoolean(SVacine.SelectedValue), SUni.Text, SOccupation.SelectedItem.ToString(), SRel.SelectedItem.ToString(), SHeight.Text, SWeight.Text, SDocument.Text, SUpload.FileName, customerID);

                if (GUpload.HasFile)
                {

                    GUpload.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "documents/" + GUpload.FileName);





                }
                else
                {


                }


            }

            catch
            {







            }
            Session["user"] = null;
            Session["CustomerID"] = null;

            mvMain.SetActiveView(mvDone);
            Response.AddHeader("REFRESH", "5;login.aspx");

        }

        protected void GUpdate_Click(object sender, EventArgs e)
        {
            int customerID = (int)Session["CustomerID"];

            try
            {



                shopTableAdapters.UsersTableAdapter user = new shopTableAdapters.UsersTableAdapter();
                user.UpdateGold(Convert.ToBoolean(GGender.SelectedValue), GCriminal.Text, GVIsa.Text, Convert.ToBoolean(BVacine.SelectedValue), GUni.Text, GOccupation.SelectedItem.ToString(), GRel.SelectedItem.ToString(), GHeight.Text, GWeight.Text, GDocument.Text, GUpload.FileName, GMedic.Text, GSecurity.Text, customerID);

                if (GUpload.HasFile)
                {

                    GUpload.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "documents/" + GUpload.FileName);





                }
                else
                {


                }


            }

            catch
            {





            }
            Session["user"] = null;
            Session["CustomerID"] = null;

            mvMain.SetActiveView(mvDone);
            Response.AddHeader("REFRESH", "5;login.aspx");
        }
    }
}