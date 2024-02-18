using System;
using System.Web.UI;

namespace Advising_System_Web
{
    public partial class Admin_Link_InstructorToCourse : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // You can add any initialization logic here
        }

        protected void RedirectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main_Admin_Page.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            // Implement any logic when the text in TextBox2 changes
        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            // Implement the logic for handling the Link button click
            // Example: You can retrieve values from TextBoxes and perform some action
            string courseId = TextBox1.Text;
            string instructorId = TextBox2.Text;
            string slotId = TextBox3.Text;

            // Add your logic here, for example, storing the data in a database or performing some operation.
        }

    }
}
