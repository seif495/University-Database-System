<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Advising_System_Web.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
        #form1 {
            margin: auto; /* Center the form within the body */
            width: 50%; /* Adjust this width as needed */
            text-align: left; /* Reset text alignment for form elements */
        }

        /* Style for specific label */
        label {
            color: white; /* Change this to your desired color */
        }

        /* Style for form elements */
        .container {
    background: rgba(0, 0, 0, 0.6);
    padding: 20px;
    border-radius: 10px;
    text-align: center;
}

        input[type="text"],input[type="password"] {
    width: 100%; /* Set the width to 100% to make them fill the container */
    padding: 10px;
    margin: 5px 0; /* Add a margin at the top and bottom */
    border: none;
    border-radius: 5px;
    box-sizing: border-box; /* Include padding and border in the element's total width and height */
}

        .custom-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #3498db;
            color: #fff;
            border: 2px solid #3498db;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s, color 0.3s;
        }

        .custom-button:hover {
            background-color: #2980b9;
            border-color: #2980b9;
            color: #fff;
            cursor: pointer;
        }
        .box {
  width: 200px;
  height: 100px;
  border: 1px solid black;
  padding: 10px;
  margin: 10px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <link rel="stylesheet" href="style.css" />
        <div class="container">
        <p style="color: #FFFFFF; font-weight: bold; font-size: large;">Please enter your credentials.</p>
        <div>
            <p style="font-weight: bold"><label for="TextBox2" class="username-label">Username: </label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
            <p style="font-weight: bold; font-size: 17px;"><label for="password">Password: </label><asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox></p>
            <asp:Button ID="adminID" runat="server" OnClick="Login" CssClass ="custom-button" Text="Login" Width="707px" />
        </div>
        <p>
            <asp:Label ID="errorMessage" runat="server" ForeColor="Red"></asp:Label>
        </p>

        </div>
    </form>
</body>
</html>
