using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.InteropServices.ComTypes;

namespace Advising_System_Web
{
    public partial class Admin_Add_Sem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RedirectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Admin_Page.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string semestername = code.Text;
            DateTime startDate = DateTime.Parse(start.Text);
            DateTime endDate = DateTime.Parse(end.Text);
            string connStr = ConfigurationManager.ConnectionStrings["Advising_System"].ToString();
            try
            {
                using (SqlConnection connection = new SqlConnection(connStr))
                {
                    using (SqlCommand cmd = new SqlCommand("[AdminAddingSemester]", connection))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@start_date", startDate);
                        cmd.Parameters.AddWithValue("@end_date", endDate);
                        cmd.Parameters.AddWithValue("@semester_code", semestername);
                        connection.Open();
                        cmd.ExecuteNonQuery();
                        connection.Close();
                        Out.Text = "Semester added!";
                    }
                }
            }
            catch (SqlException ex)
            {
                if (ex.Number == 2627) // SQL Server error number for primary key violation
                {
                    error.Text = "Error: Semester code already exists. Please choose a different code.";
                }
                else
                {
                    // Handle other SQL exceptions or rethrow the exception
                    throw;
                }
            }
            catch (Exception ex)
            {
                // Handle other exceptions if needed
                error.Text = "An error occurred while adding the semester.";
            }
        }
    }
}