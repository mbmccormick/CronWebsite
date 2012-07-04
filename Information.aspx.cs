using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CronWebsite.Common;

namespace CronWebsite
{
    public partial class Information : System.Web.UI.Page
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
            this.grdResults.DataSource = db.Informations.Where(z => z.ScheduleID == new Guid(Request.QueryString["id"])).OrderByDescending(z => z.CreatedDate);
            this.grdResults.DataBind();

            // close connection
            db.Dispose();
        }
    }
}