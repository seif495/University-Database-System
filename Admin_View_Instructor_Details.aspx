<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_View_Instructor_Details.aspx.cs" Inherits="Advising_System_Web.Admin_View_Instructor_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Instructors</title>
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
#GridView1 {
    background-color: rgba(255, 255, 255, 0.9); 
    color: #000; 
    font-size: 14px; 
}

#GridView1 td {
    background-color: rgba(255, 255, 255, 0.7); 
    border: 1px solid #ccc; 
}

#GridView1 th {
    color: #000; 

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true">
 </asp:GridView>
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
