using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CronWebsite.Common;
using NCrontab;

namespace CronWebsite
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            // validate input
            if (this.ValidateInput() == false)
                return;

            // connect to database
            DatabaseDataContext db = new DatabaseDataContext();

            // create new schedule
            Schedule schedule = new Schedule();

            // set schedule properties
            schedule.ID = Guid.NewGuid();
            schedule.Name = this.txtName.Text;
            schedule.Occurrence = this.txtOccurrence.Text;
            schedule.NextOccurrence = CrontabSchedule.Parse(schedule.Occurrence).GetNextOccurrence(DateTime.UtcNow);
            schedule.Endpoint = this.txtEndpoint.Text;
            schedule.IsEnabled = true;
            schedule.CreatedDate = DateTime.UtcNow;

            // insert schedule to database
            db.Schedules.InsertOnSubmit(schedule);
            db.SubmitChanges();

            // close connection
            db.Dispose();

            // redirect to default page
            Response.Redirect("~/default.aspx");
        }

        private bool ValidateInput()
        {
            List<string> errors = new List<string>();

            // validate name field
            if (this.txtName.Text.Length <= 0)
                errors.Add("You must specify a name for this job.");

            if (this.txtName.Text.Length > 50)
                errors.Add("The name for this job must be 50 characters or less.");

            // validate occurrence field
            if (this.txtOccurrence.Text.Length <= 0)
                errors.Add("You must specify a schedule for this job.");

            if (this.txtOccurrence.Text.Length > 50)
                errors.Add("The schedule for this job must be 50 characters or less.");

            ValueOrError<CrontabSchedule> value = CrontabSchedule.TryParse(this.txtOccurrence.Text);
            if (value.IsError == true)
                errors.Add(value.Error.Message);

            // validate endpoint field
            if (this.txtEndpoint.Text.Length <= 0)
                errors.Add("You must specify an endpoint for this job.");

            if (this.txtEndpoint.Text.Length > 4000)
                errors.Add("The endpoint for this job must be 4000 characters or less.");

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
    }
}