using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Advising_System_Web
{
    public partial class Admin_Add_Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RedirectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Admin_Page.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string major = TextBox1.Text;
            int semester = int.Parse(TextBox2.Text);
            int hours = int.Parse(TextBox3.Text);
            string name = TextBox4.Text;
            int offered = int.Parse(TextBox5.Text);
            string connStr = ConfigurationManager.ConnectionStrings["Advising_System"].ToString();
            using (SqlConnection connection = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand("[Procedures_AdminAddingCourse]", connection))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@major", major);
                    cmd.Parameters.AddWithValue("@semester", semester);
                    cmd.Parameters.AddWithValue("@credit_hours", hours);
                    cmd.Parameters.AddWithValue("@name", name);
                    cmd.Parameters.AddWithValue("@is_offered", offered);
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();
                    Out.Text = "Semester added!";
                }
            }
        }
    }
}