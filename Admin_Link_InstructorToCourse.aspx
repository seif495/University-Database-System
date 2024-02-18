<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Link_InstructorToCourse.aspx.cs" Inherits="Advising_System_Web.Admin_Link_InstructorToCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course assignment</title>
    <style>
    body {
        background-image: url("image/Shelf.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        color: white;
    }

    html {
        cursor: url('image/cursor.png'), auto;
    }

    .container {
        background: rgba(0, 0, 0, 0.6);
        padding: 20px;
        border-radius: 10px;
        text-align: center;
    }

    input[type="text"] {
        width: 100%; 
        padding: 10px;
        margin: 5px 0; 
        border: none;
        border-radius: 5px;
        box-sizing: border-box; 
    }

    .top-left-button {
        position: absolute;
        top: 10px;
        left: 10px;
        padding: 10px 20px;
        font-size: 16px;
        background-color: #3498db;
        color: #fff;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        cursor: pointer;
        z-index: 9999;
    }

    .link-button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <asp:Button ID="Button4" runat="server" CssClass="top-left-button" Text="Back" OnClick="RedirectButton_Click" />

    <p>Course ID:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>Instructor ID:
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
    </p>
    <p>Slot ID:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>

    <asp:Button ID="LinkButton" runat="server" CssClass="link-button" Text="Link" OnClick="LinkButton_Click" />

            <div id="successMessage" style="color: green; display: none;">
                Data successfully added!
            </div>
</div>
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

            function showConfirmation() {
                // Show a confirmation message
                var confirmation = confirm("Are you sure you want to link the instructor to the course?");

                // If user clicks "OK," display success message
                if (confirmation) {
                    document.getElementById('successMessage').style.display = 'block';
                }

                // Return true to proceed with the server-side click event, or false to cancel it
                return confirmation;
            }
        </script>
</body>
</html>
