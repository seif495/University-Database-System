<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Link_StudentToInstructor.aspx.cs" Inherits="Advising_System_Web.Admin_Link_StudentToInstructor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student & Instructor assignment</title>
     <style>
body {
    background-image: url("image/Shelf.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed; /* Optional: This keeps the background fixed while scrolling */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
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
        background-color: #3498db;
        color: #fff;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        cursor: pointer;
        z-index: 9999; /* Ensure the button appears above other elements if necessary */
    }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <link rel="stylesheet" href="style.css" />
        <div>
        </div>
      <asp:Button ID="Button4" runat="server" Cssclass ="top-left-button" Text="Back" OnClick="RedirectButton_Click" />

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
