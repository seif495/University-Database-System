using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising_System_Web
{
    public partial class Admin_Fetch_SemAlongCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Semster_offered_Courses();
            }
        }

        protected void RedirectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Admin_Page.aspx");
        }

        protected void Semster_offered_Courses()
        {
            string connStr = ConfigurationManager.ConnectionStrings["Advising_System"].ToString();
            using (SqlConnection connection = new SqlConnection(connStr))
            {
                string sqlQuery = "SELECT * FROM Semster_offered_Courses";

                using (SqlCommand cmd = new SqlCommand(sqlQuery, connection))
                {
                    cmd.CommandType = CommandType.Text;

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