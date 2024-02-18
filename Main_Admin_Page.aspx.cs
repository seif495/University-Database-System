using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising_System_Web
{
    public partial class Main_Admin_Page : System.Web.UI.Page
    {
        protected void RedirectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Login.aspx");
        }

        protected void View_Advisors(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Advisors_List.aspx");
        }

        protected void View_Students(object sender, EventArgs e)
        {
            Response.Redirect("Admin_List_StudentAndAdvisor.aspx");

        }

        protected void View_Pending_Requests(object sender, EventArgs e)
        {
            Response.Redirect("Admin_List_Pending_Request.aspx");

        }

        protected void Add_New_Semester(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Add_Sem.aspx");

        }

        protected void Add_New_Course(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Add_Course.aspx");

        }

        protected void Link_Instructor_To_Course(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Link_InstructorToCourse.aspx");

        }

        protected void Link_Student_To_Advisor(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Link_StudentToAdvisor.aspx");

        }

        protected void Link_Student_To_Course(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Link_StudentToInstructor.aspx");

        }

        protected void View_Instructor_Details(object sender, EventArgs e)
        {
            Response.Redirect("Admin_View_Instructor_Details.aspx");

        }

        protected void View_Semester_Details(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Fetch_SemAlongCourses.aspx");

        }
    }
}