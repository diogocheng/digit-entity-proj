using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class testimonials : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int CustomerID = Convert.ToInt32(Session["CustomerID"]);
        }

        protected void btnTestSubmit_Click()
        {
            try
            {

                shopTableAdapters.TestimonialsTableAdapter test = new shopTableAdapters.TestimonialsTableAdapter();
                test.InsertNewTestimonial(txtTestimonial.Text, DateTime.Now, txtAuthor.Text, false, Convert.ToInt32(ddlRating.SelectedValue));


                lblTest.Text = "Thank you for sumbmiting your testimonial. It is pending for approval";

                txtAuthor.Text = "";
                txtTestimonial.Text = "";
                ddlRating.SelectedIndex = ddlRating.Items.Count - 1;



            }
            catch (Exception ex)
            {

                lblTest.Text = "An error occured:" + ex.Message;



            }
        }

        protected void btnTestSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                shopTableAdapters.TestimonialsTableAdapter test = new shopTableAdapters.TestimonialsTableAdapter();
                test.InsertNewTestimonial(txtTestimonial.Text, DateTime.Now, txtAuthor.Text, false, Convert.ToInt32(ddlRating.SelectedValue));


                lblTest.Text = "Thank you for sumbmiting your testimonial. It is pending for approval";

                txtAuthor.Text = "";
                txtTestimonial.Text = "";
                ddlRating.SelectedIndex = ddlRating.Items.Count - 1;



            }
            catch (Exception ex)
            {

                lblTest.Text = "An error occured:" + ex.Message;



            }
        }
    }
}