using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising_System_Web
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["Advising_System"].ToString();
            //Create a new connection
            SqlConnection conn = new SqlConnection(connStr);
            if (!string.IsNullOrEmpty(adminID.Text) && int.TryParse(TextBox2.Text, out int id)  && TextBox2.Text == "1234" && password.Text == "123")
            {

                // Example: Redirect to another page after successful login
                Response.Redirect("Main_Admin_Page.aspx");
            }
            else
            {
                // Handle the case where the input is not a valid integer or empty
                // For example, display an error message or take appropriate action
                // Here, I'm setting a label text to show an error message
                errorMessage.Text = "Invalid credentials!";
            }
        }
    }
}