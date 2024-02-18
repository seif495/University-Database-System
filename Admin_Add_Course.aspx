<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Add_Course.aspx.cs" Inherits="Advising_System_Web.Admin_Add_Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Course</title>
          <style type="text/css">
    #form1 {
        height: 235px;
    }

html {
    cursor: url('image/cursor.png'), auto;
}

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
        }
.wood{
    cursor: pointer;
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

.textbox {
    color: white;
    text-decoration: none;
     padding: 5px;
}
.container {
    background: rgba(0, 0, 0, 0.6);
    padding: 20px;
    border-radius: 10px;
    text-align: center;
    cursor: url('image/cursor.png'), auto;
    width: 200px;
    height: 450px;
    margin-top: 450px;
    
}

input[type="text"] {
    width: 100%; 
    padding: 10px;
    margin: 5px 0; 
    border: none;
    border-radius: 5px;
    box-sizing: border-box; 
}
         </style>
</head>
<body style="height: 167px">
    <div class= "container">
    <form id="form1" runat="server" style="font-weight: bold; color: #FFFFFF">
        <link rel="stylesheet" href="style.css" />
        <div style="font-weight: bold; color: #FFFFFF">
        </div>
      <asp:Button ID="Button4" runat="server" Cssclass ="top-left-button" Text="Back" OnClick="RedirectButton_Click" />

        <br />
        <br />

        <asp:Label ID="Label1" runat="server" Text="Major:"></asp:Label>

        <br />
        <asp:TextBox ID="TextBox1" CssClass ="textbox" style = "background-image:url('image/brown.jpg')" runat="server" Height="27px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Semester:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" CssClass ="textbox" style = "background-image:url('image/brown.jpg')" runat="server" Height="27px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Credit hours:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" CssClass ="textbox" style = "background-image:url('image/brown.jpg')" runat="server" Height="27px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Name:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" CssClass ="textbox" style = "background-image:url('image/brown.jpg')" runat="server" Height="27px"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="Label5" runat="server" Text="Offered:"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox5" runat="server" CssClass ="textbox" style = "background-image:url('image/brown.jpg')" runat="server" Height="27px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" CssClass ="wood" style = "background-image:url('image/button.jpg')" Text = "Add course" OnClick="Button5_Click" Font-Bold="True" Font-Italic="False" ForeColor="#6b8e23" />
            
                        <p>
    <asp:Label ID="Out" runat="server" ForeColor="#000099"></asp:Label>
</p>
        </form>
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
</body>
</html>
