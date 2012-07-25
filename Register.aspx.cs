using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CronWebsite.Common;

namespace CronWebsite
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // validate input
            if (this.ValidateInput() == false)
                return;

            // connect to database
            DatabaseDataContext db = new DatabaseDataContext();

            // create new account
            Account account = new Account();

            // set account properties
            account.ID = Guid.NewGuid();
            account.EmailAddress = this.txtEmailAddress.Text;
            account.Password = Utilities.HashPassword(this.txtPassword.Text);
            account.Type = 1;
            account.CreatedDate = DateTime.UtcNow;

            // insert account to database
            db.Accounts.InsertOnSubmit(account);
            db.SubmitChanges();

            // close connection
            db.Dispose();

            // redirect to default page
            Response.Redirect("~/login.aspx?success=true");
        }

        private bool ValidateInput()
        {
            List<string> errors = new List<string>();

            // validate email address field
            if (this.txtEmailAddress.Text.Length <= 0)
                errors.Add("You must provide your email address.");

            if (this.txtEmailAddress.Text.Length > 50)
                errors.Add("Your email address must be 50 characters or less.");

            // validate password field
            if (this.txtPassword.Text != this.txtConfirmPassword.Text)
                errors.Add("Your passwords do not match.");

            if (this.txtPassword.Text.Length <= 0)
                errors.Add("Your must choose a password.");

            if (this.txtPassword.Text.Length < 6)
                errors.Add("Your password must be at least 6 characters.");

            if (this.txtPassword.Text.Length > 50)
                errors.Add("Your password must be 50 characters or less.");

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

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // redirect to create page
            Response.Redirect("~/dashboard.aspx");
        }
    }
}