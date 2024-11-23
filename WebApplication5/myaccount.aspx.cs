using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class myaccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int CustomerID = Convert.ToInt32(Session["CustomerID"]);


            shopTableAdapters.UsersTableAdapter shoptable = new shopTableAdapters.UsersTableAdapter();
            //get query result into the table 

            DataTable resultCusomter = new DataTable();
            resultCusomter = shoptable.GetCustomerByIDAdmin(CustomerID);


            //Write the record for controls 

            firstA.Text = resultCusomter.Rows[0]["Name"].ToString();
            secondA.Text = resultCusomter.Rows[0]["Surname"].ToString();
            emailA.Text = resultCusomter.Rows[0]["Email"].ToString();
            countryA.Text = resultCusomter.Rows[0]["Country"].ToString();
            phoneA.Text = resultCusomter.Rows[0]["Phone"].ToString();
            cityA.Text = resultCusomter.Rows[0]["City"].ToString();
            postcodeA.Text = resultCusomter.Rows[0]["PostCode"].ToString();
            adressA.Text = resultCusomter.Rows[0]["Adress"].ToString();
            emaildis.Text = resultCusomter.Rows[0]["Email"].ToString();
            string customerid = resultCusomter.Rows[0]["PlanID"].ToString();
            string pc = resultCusomter.Rows[0]["DocumentPhoto"].ToString();


            string img = "";
            string pic = "~/documents/";
            img = pic + pc;
            BImg.ImageUrl = img;
            SImg.ImageUrl = img;



            //Gold retrieve


            GDocument.Text = resultCusomter.Rows[0]["DocumentID "].ToString();
            GVacine.Text = resultCusomter.Rows[0]["Vaccinated"].ToString();
            GHeight.Text = resultCusomter.Rows[0]["Height"].ToString();
            GWeight.Text = resultCusomter.Rows[0]["Weight"].ToString();
            GGender.Text = resultCusomter.Rows[0]["Sex"].ToString();
            GOccupation.Text = resultCusomter.Rows[0]["Job"].ToString();
            GRel.Text = resultCusomter.Rows[0]["RelationalshipStatus"].ToString();
            GUni.Text = resultCusomter.Rows[0]["University"].ToString();
            GCriminal.Text = resultCusomter.Rows[0]["CriminalRecord"].ToString();
            GMedic.Text = resultCusomter.Rows[0]["MedicalRecord"].ToString();
            GVIsa.Text = resultCusomter.Rows[0]["VisaStatus"].ToString();
            GSecurity.Text = resultCusomter.Rows[0]["SecurityNumber"].ToString();
            GImg.ImageUrl = img;

            //Silver Retrieve


            SDocument.Text = resultCusomter.Rows[0]["DocumentID "].ToString();
            SVacine.Text = resultCusomter.Rows[0]["Vaccinated"].ToString();
            SHeight.Text = resultCusomter.Rows[0]["Height"].ToString();
            SWeight.Text = resultCusomter.Rows[0]["Weight"].ToString();
            SGender.Text = resultCusomter.Rows[0]["Sex"].ToString();
            SOccupation.Text = resultCusomter.Rows[0]["Job"].ToString();
            SRel.Text = resultCusomter.Rows[0]["RelationalshipStatus"].ToString();
            SUni.Text = resultCusomter.Rows[0]["University"].ToString();
            SImg.ImageUrl = img;

            //Bronze Retrieve


            Bdocument.Text = resultCusomter.Rows[0]["DocumentID "].ToString();
            BVacine.Text = resultCusomter.Rows[0]["Vaccinated"].ToString();
            BHeight.Text = resultCusomter.Rows[0]["Height"].ToString();
            BWeight.Text = resultCusomter.Rows[0]["Weight"].ToString();
            BGEnder.Text = resultCusomter.Rows[0]["Sex"].ToString();

            BImg.ImageUrl = img;


            if (customerid == "1")
            {

                mvMain.SetActiveView(mvBronze);



            }
            else if (customerid == "2")
            {

                mvMain.SetActiveView(mvSilver);

            }
            else
            {


                mvMain.SetActiveView(mvGold);

            }



            shopTableAdapters.SubscriptionPayTableAdapter subtable = new shopTableAdapters.SubscriptionPayTableAdapter();
            DataTable resultsub = new DataTable();
            resultsub = subtable.GetSubByID(CustomerID);

       
            dataend.Text = resultsub.Rows[0]["DataExp"].ToString();
            datastart.Text = resultsub.Rows[0]["DateIssued"].ToString();
            planname.Text = resultsub.Rows[0]["PlanName"].ToString();



            var card_number = resultCusomter.Rows[0]["CreditCard"].ToString(); ;
            var reason = "";
            var s = "Card Ending in {0}";
            var text = String.Format(s, card_number.Substring(card_number.Length - 4), reason);


            creditcard.Text = text;

            shopTableAdapters.CardInformationTableAdapter credit = new shopTableAdapters.CardInformationTableAdapter();
            DataTable resultcard = new DataTable();
            resultcard = credit.GetAllID(card_number);


            Cm.Text = resultcard.Rows[0]["ExpiryMonth"].ToString();
            Cy.Text = resultcard.Rows[0]["ExpiryYear"].ToString();
            Ctype.Text = resultcard.Rows[0]["CardType"].ToString();

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

        protected void btnDetail_Click(object sender, EventArgs e)
        {
            int CustomerID = Convert.ToInt32(Session["CustomerID"]);
            shopTableAdapters.UsersTableAdapter shoptable = new shopTableAdapters.UsersTableAdapter();
            shoptable.UpdateCustomer(firstA.Text, secondA.Text, decimal.Parse(phoneA.Text), emailA.Text, countryA.SelectedItem.Text, cityA.Text, phoneA.Text, adressA.Text, CustomerID);

            Response.Redirect(Request.RawUrl);
        }

        protected void btnDetailC_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }

        protected void updateEmail_Click(object sender, EventArgs e)
        {
            int CustomerID = Convert.ToInt32(Session["CustomerID"]);
            shopTableAdapters.UsersTableAdapter shoptable = new shopTableAdapters.UsersTableAdapter();
            shoptable.UpdateEmail(updEmail.Text, CustomerID);
            Response.Redirect(Request.RawUrl);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int CustomerID = Convert.ToInt32(Session["CustomerID"]);

            shopTableAdapters.UsersTableAdapter shoptable = new shopTableAdapters.UsersTableAdapter();
            //get query result into the table 

            DataTable resultCusomter = new DataTable();
            resultCusomter = shoptable.GetCustomerByIDAdmin(CustomerID);

            lblDiogo.Text = resultCusomter.Rows[0]["CustomerPsw"].ToString();
        }

        protected void btnCard_Click(object sender, EventArgs e)
        {
            int CustomerID = Convert.ToInt32(Session["CustomerID"]);
            shopTableAdapters.CardInformationTableAdapter card = new shopTableAdapters.CardInformationTableAdapter();
            card.InsertNewCardInfo(txtcard.Text, DropDownList1.SelectedItem.Text, Convert.ToInt32(ddlExpiryMonth.SelectedItem.Text), Convert.ToInt32(ddlExpiryYear.SelectedItem.Text), Convert.ToInt32(txtcvv.Text));

            shopTableAdapters.UsersTableAdapter user = new shopTableAdapters.UsersTableAdapter();
            user.UpdateCard(txtcard.Text, CustomerID);

        }
    }
}