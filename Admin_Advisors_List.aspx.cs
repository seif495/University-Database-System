using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Advising_System_Web
{
    public partial class Admin_Advisors_List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Procedures_AdminListAdvisors();
            }
        }
        protected void RedirectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Admin_Page.aspx");
        }
        protected void Procedures_AdminListAdvisors()
        {
            string connStr = ConfigurationManager.ConnectionStrings["Advising_System"].ToString();

            using (SqlConnection connection = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand("Procedures_AdminListAdvisors", connection))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();

                    connection.Open();
                    adapter.Fill(dt);
                    connection.Close();

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
    }  
}
