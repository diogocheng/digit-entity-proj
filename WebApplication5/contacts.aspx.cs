using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class contacts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int CustomerID = Convert.ToInt32(Session["CustomerID"]);
        }

        protected void btnSubmit_Click()
        {
            try
            {
                shopTableAdapters.ContactsTableAdapter contact = new shopTableAdapters.ContactsTableAdapter();
                contact.InsertNewContact(Cddl.SelectedValue, cEmail.Text, cMessage.Text, DateTime.Now, cName.Text);


                lblC.Text = "Message was sent sucessefuly";




                //Outlook.Application _app = new Outlook.Application();
                //Outlook.MailItem mail = (Outlook.MailItem)_app.CreateItem(Outlook.OlItemType.olMailItem);
                //mail.To = cEmail.Text;
                //mail.Subject = Convert.ToString(Cddl);
                //mail.Body =cMessage.Text;
                //mail.Importance = Outlook.OlImportance.olImportanceNormal;
                //((Outlook._MailItem)mail).Send();
                //    lblC.Text = "Your email has been sucessfully sent";
            }
            catch (Exception ex)
            {


                lblC.Text = ex.Message;

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                shopTableAdapters.ContactsTableAdapter contact = new shopTableAdapters.ContactsTableAdapter();
                contact.InsertNewContact(Cddl.SelectedValue, cEmail.Text, cMessage.Text, DateTime.Now, cName.Text);


                lblC.Text = "Message was sent sucessefuly";




                //Outlook.Application _app = new Outlook.Application();
                //Outlook.MailItem mail = (Outlook.MailItem)_app.CreateItem(Outlook.OlItemType.olMailItem);
                //mail.To = cEmail.Text;
                //mail.Subject = Convert.ToString(Cddl);
                //mail.Body =cMessage.Text;
                //mail.Importance = Outlook.OlImportance.olImportanceNormal;
                //((Outlook._MailItem)mail).Send();
                //    lblC.Text = "Your email has been sucessfully sent";
            }
            catch (Exception ex)
            {


                lblC.Text = ex.Message;

            }
        }
    }
}