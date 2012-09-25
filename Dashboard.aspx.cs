using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CronWebsite.Common;

namespace CronWebsite
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                // bind data to page
                this.BindData();
            }
        }

        private void BindData()
        {
            // connect to database
            DatabaseDataContext db = new DatabaseDataContext();

            // bind schedules to display
            this.grdResults.DataSource = db.Schedules.Where(z => z.AccountID == (Session["CurrentAccount"] as Common.Account).ID).OrderBy(z => z.Name);
            this.grdResults.DataBind();

            // close connection
            db.Dispose();
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            // redirect to create page
            Response.Redirect("~/create.aspx");
        }
    }
}