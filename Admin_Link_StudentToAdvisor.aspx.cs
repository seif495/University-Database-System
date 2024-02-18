using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising_System_Web
{
    public partial class Admin_Link_StudentToAdvisor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RedirectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Admin_Page.aspx");
        }
    }
}