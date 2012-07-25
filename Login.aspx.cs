using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CronWebsite.Common;

namespace CronWebsite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["success"] != null &&
                Request.QueryString["success"].ToString() == "true")
            {
                // show success panel
                this.pnlSuccess.Visible = true;

                // set errors text
                this.litSuccess.Text = "<ul>\n";
                this.litSuccess.Text += "<li>Your account was created successfully.</li>\n";
                this.litSuccess.Text += "</ul>\n";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // validate input
            if (this.ValidateInput() == false)
                return;

            // connect to database
            DatabaseDataContext db = new DatabaseDataContext();

            // validate account credentials
            var account = db.Accounts.Where(z => z.EmailAddress == this.txtEmailAddress.Text &&
                                                 z.Password == Utilities.HashPassword(this.txtPassword.Text)).SingleOrDefault();

            if (account != null)
            {
                Session["CurrentAccount"] = account;
            }
            else
            {
                // show errors panel
                this.pnlErrors.Visible = true;

                // set errors text
                this.litErrors.Text = "<ul>\n";
                this.litErrors.Text += "<li>Your credentials could not be authenticated.</li>\n";
                this.litErrors.Text += "</ul>\n";

                // close connection
                db.Dispose();

                return;
            }

            // close connection
            db.Dispose();

            // redirect to default page
            Response.Redirect("~/dashboard.aspx");
        }

        private bool ValidateInput()
        {
            List<string> errors = new List<string>();

            // validate email address field
            if (this.txtEmailAddress.Text.Length <= 0)
                errors.Add("You must enter your email address.");

            // validate password field
            if (this.txtPassword.Text.Length <= 0)
                errors.Add("Your must enter your password.");

            // display errors on the page
            if (errors.Count > 0)
            {
                // show errors panel
                this.pnlErrors.Visible = true;

                // set errors text
                this.litErrors.Text = "<ul>\n";
                foreach (string error in errors)
                {
                    this.litErrors.Text += "<li>" + error + "</li>\n";
                }
                this.litErrors.Text += "</ul>\n";

                return false;
            }
            else
            {
                // hide errors panel
                this.pnlErrors.Visible = false;

                // reset errors text
                this.litErrors.Text = "";

                return true;
            }
        }

        protected void btnForgotPassword_Click(object sender, EventArgs e)
        {

        }
    }
}