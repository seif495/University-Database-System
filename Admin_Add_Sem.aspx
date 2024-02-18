<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Add_Sem.aspx.cs" Inherits="Advising_System_Web.Admin_Add_Sem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New semester</title>
    <style type="text/css">
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
            z-index: 9999;
        }

        .khara3leek {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px; /* Adjust the margin as needed */
        }

        .container {
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            cursor: url('image/cursor.png'), auto;
            width: 300px;
            height: 400px;
            margin-top: 400px;
            
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }

        #successMessage,
        #errorMessage {
            margin-top: 10px;
            color: white;
        }
    </style>
</head>
    
<body style="height: 190px">
    <div class ="container">
     <form id="form1" runat="server" style="font-weight: bold; color: #FFFFFF; margin-top: 0px;">
         <br />
        <link rel="stylesheet" href="style.css" />
        <div style="font-weight: bold; color: #FFFFFF">
        </div>
          <br />
  <br />
  <br />
  Start date:
        <br />
        <asp:TextBox ID="start" runat="server"></asp:TextBox>
        <p style="height: 32px; font-weight: bold; color: #FFFFFF;">
            <asp:Label ID="Label1" runat="server" Text="End date:"></asp:Label>
            <asp:TextBox ID="end" runat="server"></asp:TextBox>
         </p>
        <br />
         <br />
        Semester code:<br />
        <asp:TextBox ID="code" runat="server"></asp:TextBox>
        <br />
         <br />
        <asp:Button ID="Button1" runat="server" CssClass ="khara3leek" OnClick="Button1_Click" Text="Add semester" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Cssclass ="top-left-button" Text="Back" OnClick="RedirectButton_Click" />
         </form>
                 <p>
     <asp:Label ID="Out" runat="server" ForeColor="#0099FF"></asp:Label>
     <asp:Label ID="error" runat="server" ForeColor="#FF0000"></asp:Label>
 </p>

        <div id="successMessage" style="display: none;">
                Semester added successfully!
            </div>
            <div id="errorMessage" style="display: none;" color: red>
                Error: Semester code already exists. Please choose a different code.
            </div>
        </div>
     
    <script type="text/javascript">
function handleEscapeKey(event) {
    
    if (event.keyCode === 27) {
        
        document.getElementById('<%= Button4.ClientID %>').click();
    }
}


        document.addEventListener('keydown', handleEscapeKey);

        function showConfirmation() {
            
            var confirmation = confirm("Are you sure you want to link the instructor to the course?");

            
            if (confirmation) {
                document.getElementById('successMessage').style.display = 'block';
            }

           
            return confirmation;
        }
    </script>
</body>
</html>
