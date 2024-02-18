<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_Admin_Page.aspx.cs" Inherits="Advising_System_Web.Main_Admin_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main page</title>
    <style>
        body {
        background-image: url('image/Shelf.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed; /* Optional: This keeps the background fixed while scrolling */
        display: flex;
        justify-content: center;
        align-items: center;
        height: 517px;
        margin: 0;
    }
        html {
    cursor: url('image/cursor.png'), auto;
}
    .top-left-button {
            position: absolute;
            top: 10px;
            left: 10px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #e74c3c;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            z-index: 9999; /* Ensure the button appears above other elements if necessary */
        }

    .custom-button {
            padding: 14px 24px;
            font-size: 18px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            margin-bottom: 10px;
            transition: background-color 0.3s ease;
            display: block;
            width: 300px;
            cursor: url('image/cursor.png'), auto;
        }

        .custom-button:hover {
            background-color: #2980b9;
        }
        .top-left-button:hover {
            background-color: #c0392b;
        }

        #form1 {
            height: 594px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <link rel="stylesheet" href="style.css" />
        <div>
            <br />
            <br />
            <br />
            <br />
        </div>
        <asp:Button ID="Button4" runat="server" Cssclass ="top-left-button" Text="Log out" OnClick="RedirectButton_Click" />
        <asp:Button ID="Button1" runat="server" CssClass="custom-button" Text="View Advisors" OnClick="View_Advisors" />
        <asp:Button ID="Button2" runat="server" CssClass="custom-button" Text="View Students" OnClick="View_Students" />
        <asp:Button ID="Button3" runat="server" CssClass="custom-button" Text="View pending requests" OnClick="View_Pending_Requests" />
        <asp:Button ID="Button5" runat="server" CssClass="custom-button" OnClick="Add_New_Semester" Text="Add new semester" />
        <asp:Button ID="Button6" runat="server" CssClass="custom-button" OnClick="Add_New_Course" Text="Add new course" />
        <asp:Button ID="Button7" runat="server" CssClass="custom-button" OnClick="Link_Instructor_To_Course" Text="Link instructor to a course" />
        <asp:Button ID="Button8" runat ="server" CssClass="custom-button" OnClick="Link_Student_To_Advisor" Text="Link student to advisor" />
        <asp:Button ID="Button9" runat="server" CssClass="custom-button" Text="Link student to course" OnClick="Link_Student_To_Course" />
        <asp:Button ID="Button10" runat="server" CssClass="custom-button" Text="View instructors' details" OnClick="View_Instructor_Details" />
        <asp:Button ID="Button11" runat="server" CssClass="custom-button" Text="View semesters' details" OnClick="View_Semester_Details" />
    </form>
    <script type="text/javascript">
function handleEscapeKey(event) {
    // Check if the pressed key is the "Escape" key (key code 27)
    if (event.keyCode === 27) {
        // Trigger the click event of the button with the ID "yourButtonId"
        document.getElementById('<%= Button4.ClientID %>').click();
    }
}

// Attach the function to the keydown event of the document
document.addEventListener('keydown', handleEscapeKey);
    </script>
</body>
</html>
