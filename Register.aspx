<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication4.Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Registration Form</title>
    <!-- Add jQuery to prevent UnobtrusiveValidationMode errors -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        /* General body styling */
        body {
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Form container styling */
        #form1 {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px;
        }

        /* Label and input field styling */
        label {
            display: block;
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
        }

        asp:TextBox, input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Button styling */
        asp:Button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        asp:Button:hover {
            background-color: #0056b3;
        }

        /* Error message styling */
        .error {
            color: #ff0000;
            font-size: 14px;
        }

        /* Center form on the page */
        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Success message */
        asp:Label {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="text-align: center; color: #007bff;">Registration Form</h2>
        <div>
            <!-- Name Field -->
            <label for="txtName">Name:</label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server"
                ControlToValidate="txtName" ErrorMessage="Name is required." 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <br />

        <!-- Email Field -->
        <div>
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ControlToValidate="txtEmail" ErrorMessage="Email is required." 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ControlToValidate="txtEmail" ErrorMessage="Invalid email format."
                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
        <br />

        <!-- Password Field -->
        <div>
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                ControlToValidate="txtPassword" ErrorMessage="Password is required." 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPassword" runat="server"
                ControlToValidate="txtPassword" ErrorMessage="Password must be at least 6 characters long."
                ValidationExpression=".{6,}" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
        <br />

        <!-- Confirm Password Field -->
        <div>
            <label for="txtConfirmPassword">Confirm Password:</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server"
                ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required." 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvPassword" runat="server"
                ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"
                ErrorMessage="Passwords do not match." ForeColor="Red"></asp:CompareValidator>
        </div>
        <br />

        <!-- Submit Button -->
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" />
        </div>
        <br />

        <!-- Success Message -->
        <div>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
