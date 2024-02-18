<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_List_Pending_Request.aspx.cs" Inherits="Advising_System_Web.Admin_List_Pending_Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pending requests</title>
    <style>
        body {
            background-image: url("image/Shelf.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        html {
            cursor: url('image/cursor.png'), auto;
        }

        #container {
            background-color: rgba(255, 255, 255, 0.9);
            color: #000;
            font-size: 14px;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px #3498db;
            margin-top: 20px;
        }

        #GridView1 {
            width: 100%;
        }

        #GridView1 td {
            background-color: rgba(255, 255, 255, 0.7);
            border: 1px solid #ccc;
            padding: 10px;
        }

        #GridView1 th {
            color: #000;
            background-color: #f2f2f2;
            padding: 12px;
            text-align: left;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button4" runat="server" CssClass="top-left-button" Text="Back" OnClick="RedirectButton_Click" />

        <div id="container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true">
            </asp:GridView>
        </div>

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
    </form>
</body>
</html>
